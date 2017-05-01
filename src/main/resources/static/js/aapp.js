/**
 * Created by poovarasanv on 18/4/17.
 * Project : mobiledashboard
 */


var ws = new WebSocket('ws://' + location.host + '/video');
var videoInput;
var videoOutput;
var webRtcPeer;
var state = null;

const I_CAN_START = 0;
const I_CAN_STOP = 1;
const I_AM_STARTING = 2;


function start() {
    console.log('Starting video call ...');

    videoInput = document.getElementById("videoInput");
    videoOutput = document.getElementById("videoOutput");
    // Disable start button
    setState(I_AM_STARTING);
    showSpinner(videoInput, videoOutput);

    console.log('Creating WebRtcPeer and generating local sdp offer ...');

    var options = {
        localVideo : videoInput,
        remoteVideo : videoOutput,
        onicecandidate : onIceCandidate
    }
    webRtcPeer = new kurentoUtils.WebRtcPeer.WebRtcPeerSendrecv(options,
        function(error) {
            if (error)
                return console.error(error);
            webRtcPeer.generateOffer(onOffer);
        });
}

function onOffer(error, offerSdp) {
    if (error)
        return console.error('Error generating the offer');
    console.info('Invoking SDP offer callback function ' + location.host);
    var message = {
        id : 'start',
        sdpOffer : offerSdp
    }
    sendMessage(message);
}

function onError(error) {
    console.error(error);
}

function onIceCandidate(candidate) {
    console.log('Local candidate' + JSON.stringify(candidate));

    var message = {
        id : 'onIceCandidate',
        candidate : candidate
    };
    sendMessage(message);
}

function startResponse(message,$scope) {
    setState(I_CAN_STOP,$scope);
    console.log('SDP answer received from server. Processing ...');

    webRtcPeer.processAnswer(message.sdpAnswer, function(error) {
        if (error)
            return console.error(error);
    });
}

function stop() {
    console.log('Stopping video call ...');
    setState(I_CAN_START);
    if (webRtcPeer) {
        webRtcPeer.dispose();
        webRtcPeer = null;

        var message = {
            id : 'stop'
        };
        sendMessage(message);
    }
    hideSpinner(videoInput, videoOutput);
}

function setState(nextState) {
    switch (nextState) {
        case I_CAN_START:
            $('#start').attr('disabled', false);
            $('#start').attr('onclick', 'start()');
            $('#stop').attr('disabled', true);
            $('#stop').removeAttr('onclick');
            break;

        case I_CAN_STOP:
            $('#start').attr('disabled', true);
            $('#stop').attr('disabled', false);
            $('#stop').attr('onclick', 'stop()');
            break;

        case I_AM_STARTING:
            $('#start').attr('disabled', true);
            $('#start').removeAttr('onclick');
            $('#stop').attr('disabled', true);
            $('#stop').removeAttr('onclick');
            break;

        default:
            onError('Unknown state ' + nextState);
            return;
    }
    state = nextState;
}

function sendMessage(message) {
    var jsonMessage = JSON.stringify(message);
    console.log('Senging message: ' + jsonMessage);
    ws.send(jsonMessage);
}

function showSpinner() {
    for (var i = 0; i < arguments.length; i++) {
        arguments[i].poster = './img/transparent-1px.png';
        arguments[i].style.background = "center transparent url('./img/spinner.gif') no-repeat";
    }
}

function hideSpinner() {
    for (var i = 0; i < arguments.length; i++) {
        arguments[i].src = '';
        arguments[i].poster = './img/webrtc.png';
        arguments[i].style.background = '';
    }
}
/**
 * Lightbox utility (to display media pipeline image in a modal dialog)
 */
// $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
//     event.preventDefault();
//     $(this).ekkoLightbox();
// });
let app = angular.module('myapp', ['ngMaterial', 'ngStomp', 'ngScrollbar'], function ($interpolateProvider) {
    $interpolateProvider.startSymbol('[[');
    $interpolateProvider.endSymbol(']]');
});


app.config(function ($locationProvider) {
    $locationProvider.html5Mode(true);
});
app.config(function ($mdThemingProvider) {
    $mdThemingProvider
        .theme('default')
        .primaryPalette(primaryColor)
        .accentPalette(accentColor);
});


app.controller('maincontroller', function ($scope, $mdToast, $stomp, $log, $location) {

    $stomp.setDebug(function (args) {
        $log.debug(args)
    });

    if ($location.path() != "/") {
        $stomp
            .connect('/s/chat', null)
            .then(function (frame) {
                $stomp.subscribe("/topic/messages", function (payload, headers, res) {
                    $mdToast.show(
                        $mdToast
                            .simple()
                            .textContent(payload)
                            .hideDelay(3000)
                    );
                }, {});


                $stomp.subscribe("/user/queue/search", function (payload, headers, res) {
                    alert(payload);
                }, {});

                $stomp.subscribe("/user/queue/notification", function (payload, headers, res) {
                    alert(payload);
                }, {});
            });
    }
    $scope.ping = function () {
        $stomp.send("/app/s/chat", {text: "Hii"}, {})
    };
});

app.controller('mobilecontroller', function ($scope) {

});

app.controller('videocontroller',function ($scope) {
    setState(I_CAN_START,$scope);

    window.onload = function() {
        console.log('Page loaded ...');
        setState(I_CAN_START);
    };

    window.onbeforeunload = function() {
        ws.close();
    };

    ws.onmessage = function(message) {
        var parsedMessage = JSON.parse(message.data);
        console.info('Received message: ' + message.data);

        switch (parsedMessage.id) {
            case 'startResponse':
                startResponse(parsedMessage,$scope);
                break;
            case 'error':
                if (state == I_AM_STARTING) {
                    setState(I_CAN_START,$scope);
                }
                onError('Error message from server: ' + parsedMessage.message);
                break;
            case 'iceCandidate':
                webRtcPeer.addIceCandidate(parsedMessage.candidate, function(error) {
                    if (error)
                        return console.error('Error adding candidate: ' + error);
                });
                break;
            default:
                if (state == I_AM_STARTING) {
                    setState(I_CAN_START,$scope);
                }
                onError('Unrecognized message', parsedMessage);
        }
    };

});