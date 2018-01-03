<!doctype html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><g:layoutTitle default="${message(code: 'app.name')}"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="webjars/bootstrap/3.3.6/css/bootstrap.css"/>
    <asset:stylesheet src="webjars/font-awesome/4.7.0/css/font-awesome.css"/>
    <asset:stylesheet src="main.css"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <g:layoutHead/>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <g:link uri="/" class="navbar-brand">
                <g:img dir="images" file="logo.png" width="40" height="40"/>
            </g:link>
        </div>
        <sec:ifLoggedIn>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><g:link controller="profile"><span class="fa fa-user"></span>&nbsp;
                        <sec:loggedInUserInfo field="username"/></g:link></li>
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <li><g:link uri="/dashboard">
                            <g:message code="appli.label"/>
                        </g:link></li>
                    </sec:ifAllGranted>
                    <li><g:link uri="/logoff" class="btn btn-inverted-white btn-default logout-button">
                        <g:message code="springSecurity.logout.button"/>
                    </g:link>
                    </li>
                </ul>
            </div>
        </sec:ifLoggedIn>
    </div>
</nav>

<div class="wrap">
    <div class="content container-fluid">
        <g:layoutBody/>
    </div>
</div>

<footer class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
        <g:message code="app.footer" encodeAs="raw"/>
    </div>
</footer>

<asset:javascript src="webjars/jquery/2.2.1/jquery.js"/>
<asset:javascript src="webjars/bootstrap/3.3.6/js/bootstrap.js"/>
<asset:javascript src="main.js"/>
</body>

</html>
