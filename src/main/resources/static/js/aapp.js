/**
 * Created by poovarasanv on 18/4/17.
 * Project : mobiledashboard
 */
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
