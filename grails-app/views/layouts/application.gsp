<!DOCTYPE html>
<html lang="ja">
<head>
    <title><g:message code="app.label"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
    <asset:stylesheet src="webjars/bootstrap/3.3.6/css/bootstrap.css"/>
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="webjars/jquery/2.2.1/jquery.js"/>
    <asset:javascript src="webjars/bootstrap/3.3.6/js/bootstrap.js"/>
    <asset:javascript src="application.js"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${createLink(uri: '/')}"><g:message code="app.label"/></a>
        </div>

        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <sec:ifLoggedIn>
                    <li>
                        <p class="navbar-text">
                            <span class="glyphicon glyphicon-user"></span>
                            <sec:loggedInUserInfo field="username"/>
                        </p>
                    </li>
                    <li>
                        <g:link uri="/logoff" class="logout-link">
                            <g:message code="springSecurity.logout.button"/>
                        </g:link>
                    </li>
                </sec:ifLoggedIn>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <sec:ifLoggedIn>
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li>
                        <g:link controller="projectRegistrationRequest">
                            <g:message code="navBar.projectRegistrationRequest.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="projectUpdateRequest">
                            <g:message code="navBar.projectUpdateRequest.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="projectUnregistrationRequest">
                            <g:message code="navBar.projectUnregistrationRequest.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="externalConnectionRegistrationRequest">
                            <g:message code="navBar.externalConnectionRegistrationRequest.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="externalConnectionUnregistrationRequest">
                            <g:message code="navBar.externalConnectionUnregistrationRequest.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="project">
                            <g:message code="navBar.project.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="virtualMachine">
                            <g:message code="navBar.virtualMachine.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="virtualMachineData">
                            <g:message code="navBar.virtualMachineData.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="virtualMachineTemplate">
                            <g:message code="navBar.virtualMachineTemplate.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="ipAddressGroup">
                            <g:message code="navBar.ipAddressGroup.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="person">
                            <g:message code="navBar.person.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="projectType">
                            <g:message code="navBar.projectType.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="virtualMachineOperationStatus" action="show">
                            <g:message code="navBar.virtualMachineOperationStatus.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="sendMailToAdministrator">
                            <g:message code="navBar.sendMailToAdministrator.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="mailAddressConfig" action="show">
                            <g:message code="navBar.mailAddressConfig.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="mailTemplate">
                            <g:message code="navBar.mailTemplate.label"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link controller="export">
                            <g:message code="navBar.export.label"/>
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