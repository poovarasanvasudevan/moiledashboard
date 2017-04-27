<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Title</title>
    <base href="/">
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic"/>
    <link rel="stylesheet" href="//fonts.googleapis.com/icon?family=Material+Icons"/>

    <link rel="stylesheet" href="/css/amaterial.css"/>
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/app.css"/>
</head>
<body ng-app="myapp" ng-controller="maincontroller">

<div layout="column" layout-fill>
    <md-toolbar class="md-whiteframe-2dp">
        <div class="md-toolbar-tools">
            <h2 flex="" md-truncate="" style="color: white;">Toolbar with Disabled/Enabled Icon Buttons</h2>
        </div>
    </md-toolbar>

    <md-content flex>
        <div id="full-content">
            {% block content %}{% endblock %}
        </div>
    </md-content>
</div>
<script>
    let primaryColor = "{{ primaryColor | escape(strategy="js") }}";
    let accentColor = "{{ accentColor | escape(strategy="js") }}";
    let user = "{{ user | escape(strategy="js") }}";
</script>

<script src="/js/angular.js"></script>
<script src="/js/animate.js"></script>
<script src="/js/aria.js"></script>
<script src="/js/message.js"></script>
<script src="/js/amaterial.js"></script>
<script src="/js/ngstomp.js"></script>
<script src="/js/scroll.js"></script>
<script src="/js/aapp.js"></script>

<!--<script type="text/javascript">-->
<!--var stompClient = null;-->

<!--function setConnected(connected) {-->
<!--document.getElementById('connect').disabled = connected;-->
<!--document.getElementById('disconnect').disabled = !connected;-->
<!--document.getElementById('conversationDiv').style.visibility-->
<!--= connected ? 'visible' : 'hidden';-->
<!--document.getElementById('response').innerHTML = '';-->
<!--}-->

<!--function connect() {-->
<!--var socket = new SockJS('/chat');-->
<!--stompClient = Stomp.over(socket);-->
<!--stompClient.connect({}, function (frame) {-->
<!--setConnected(true);-->
<!--console.log('Connected: ' + frame);-->
<!--stompClient.subscribe('/topic/messages', function (messageOutput) {-->
<!--showMessageOutput(JSON.parse(messageOutput.body));-->
<!--});-->
<!--});-->
<!--}-->

<!--function disconnect() {-->
<!--if (stompClient != null) {-->
<!--stompClient.disconnect();-->
<!--}-->
<!--setConnected(false);-->
<!--console.log("Disconnected");-->
<!--}-->

<!--function sendMessage() {-->
<!--var from = document.getElementById('from').value;-->
<!--var text = document.getElementById('text').value;-->
<!--stompClient.send("/app/chat", {},-->
<!--JSON.stringify({'from': from, 'text': text}));-->
<!--}-->

<!--function showMessageOutput(messageOutput) {-->
<!--var response = document.getElementById('response');-->
<!--var p = document.createElement('p');-->
<!--p.style.wordWrap = 'break-word';-->
<!--p.appendChild(document.createTextNode(messageOutput.form + ": "-->
<!--+ messageOutput.message + " (" + messageOutput.time + ")"));-->
<!--response.appendChild(p);-->
<!--}-->
<!--</script>-->
</body>
</html>