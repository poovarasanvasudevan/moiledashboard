{% extends "layout/layout" %}
{% block content %}
    <div ng-controller="videocontroller">
        <div class="col-md-5">
            <h3>Local stream</h3>
            <video id="videoInput" ng-model="videoInput" autoplay width="480px" height="360px"></video>
        </div>
        <div class="col-md-2">
            <md-button class="md-primary md-raised" ng-model="start" id="start"> Start</md-button>
            <br/>
            <md-button class="md-warn md-raised" ng-model="stop" id="stop"> stop</md-button>
        </div>
        <div class="col-md-5">
            <h3>Remote stream</h3>
            <video id="videoOutput" ng-model="videoOutput" autoplay width="480px" height="360px"></video>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="/js/kutils.js"></script>
{% endblock %}