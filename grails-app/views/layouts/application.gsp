<!DOCTYPE html>
<html lang="ja">
<head>
    <title><g:layoutTitle default="${message(code: 'app.label')}"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
    <asset:stylesheet src="webjars/bootstrap/3.3.6/css/bootstrap.css"/>
    <asset:stylesheet src="webjars/font-awesome/4.7.0/css/font-awesome.css"/>
    <asset:stylesheet src="webjars/chosen/1.7.0/chosen.min.css"/>
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="webjars/jquery/2.2.1/jquery.js"/>
    <asset:javascript src="webjars/bootstrap/3.3.6/js/bootstrap.js"/>
    <asset:javascript src="webjars/chosen/1.7.0/chosen.jquery.min.js"/>
    <asset:javascript src="application.js"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:link controller="dashboard" class="navbar-brand"><g:message code="app.label"/></g:link>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <sec:ifLoggedIn>
                    <li><g:link controller="dashboard">
                        <g:message code="appli.label"/>
                    </g:link></li>
                    <li><g:link controller="person">
                        <g:message code="appli.profile.label"/>
                    </g:link></li>
                    <li><g:link uri="/">
                        <g:message code="appli.help.label"/>
                    </g:link></li>
                    <li><g:link uri="/logoff" class="logout-link">
                        <g:message code="springSecurity.logout.button"/>
                    </g:link></li>
                </sec:ifLoggedIn>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <sec:ifLoggedIn>
            <div class="col-sm-3 col-md-2 sidebar">
                <strong class="navbar__title"><span class="glyphicon glyphicon-adjust"></span>&nbsp;
                    <g:message code="appli.navBar.create.title"/></strong>
                <ul class="nav nav-sidebar">
                    <li>
                        <g:link controller="startPage">
                            <span class="glyphicon glyphicon-star"></span>&nbsp;
                            <g:message code="appli.navBar.startPage.label"/>
                        </g:link></li>
                    <li>
                        <g:link controller="questions">
                            <span class="glyphicon glyphicon-question-sign"></span>&nbsp;
                            <g:message code="appli.navBar.questions.label"/>
                        </g:link>
                    </li>
                </ul>
                <strong class="navbar__title"><span class="glyphicon glyphicon-signal"></span>&nbsp;
                <g:message code="appli.navBar.analyze.title"/>
                </strong>
                <ul class="nav nav-sidebar">
                    <li>
                        <g:link controller="grading">
                            <span class="glyphicon glyphicon-grain"></span>&nbsp;
                            <g:message code="appli.navBar.grading.label"/>
                        </g:link></li>
                    <li>
                        <g:link controller="certification">
                            <span class="glyphicon glyphicon-certificate"></span>&nbsp;
                            <g:message code="appli.navBar.certification.label"/>
                        </g:link>
                    </li>
                </ul>
                <strong class="navbar__title"><span class="glyphicon glyphicon-cog"></span>&nbsp;
                    <g:message code="appli.navBar.settings.title"/></strong>
                <ul class="nav nav-sidebar">
                    <li>
                        <g:link controller="styling">
                            <span class="glyphicon glyphicon-stats"></span>&nbsp;
                            <g:message code="appli.navBar.styling.label"/>
                        </g:link></li>
                    <li>
                        <g:link controller="resultPage">
                            <span class="glyphicon glyphicon-resize-full"></span>&nbsp;
                            <g:message code="appli.navBar.resultPage.label"/>
                        </g:link>
                    </li>
                </ul>
            </div>

            <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                <g:layoutBody/>
            </div>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <div class="col-md-12">
                <g:layoutBody/>
            </div>
        </sec:ifNotLoggedIn>
    </div>
</div>
</body>
</html>