{% extends "layout/layout" %}
{% block content %}
    <div class="col-md-4 col-md-offset-4" style="margin-top: 10% !important;">
        <md-card style="padding:16px !important;">
            <form method="post" action="/">
                <md-card-content>

                    <center>
                        <span class="error-txt"> {{error}}</span>
                        <span class="success-txt">{{message}}</span>
                    </center>

                    <br/>

                    <md-input-container md-no-float class="md-block">
                        <md-icon md-svg-src="img/icons/ic_phone_24px.svg"></md-icon>
                        <input  type="text"  name="username" placeholder="Username">
                    </md-input-container>

                    <md-input-container md-no-float class="md-block">
                        <md-icon md-svg-src="img/icons/ic_phone_24px.svg"></md-icon>
                        <input  type="password"  name="password" placeholder="Password">
                    </md-input-container>

                    <div>
                        <md-button class="md-raised md-primary pull-right" type="submit">Login</md-button>
                        <br/>
                        <br/>
                    </div>
                </md-card-content>
            </form>
        </md-card>
    </div>
{% endblock %}
