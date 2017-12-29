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
        <g:link uri="/" class="navbar-brand"><g:message code="app.name"/></g:link>
        <sec:ifLoggedIn>
            <div class="nav navbar-form navbar-right header__menu">
                <span class="header__user-name"><span class="fa fa-user"></span>&nbsp;<sec:loggedInUserInfo field="username"/></span>
                <g:form controller="logout" class="logout-form">
                    <button type="submit" class="btn btn-inverted-white btn-default logout-button">
                        <g:message code="springSecurity.logout.button"/>
                    </button>
                </g:form>
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
