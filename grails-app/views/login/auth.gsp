<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="app.title" args="[message(code: 'springSecurity.login.title')]"/></title>
</head>

<body>
<div class="modal-dialog modal-sm">
    <g:if test="${flash.message}">
        <div class="alert alert-dismissible alert-danger">
            ${flash.message}
        </div>
    </g:if>
    <div class="modal-content">
        <g:form controller="login" action="authenticate" method="POST" autocomplete="off"
                class="form-signin form-horizontal ng-pristine ng-valid form-group">
            <div class="modal-header">
                <h4 class="modal-title">${message(code: 'springSecurity.login.message')}</h4>
            </div>

            <div class="modal-body">
                <p>
                    <label for="${usernameParameter ?: 'username'}" class="sr-only">
                        <g:message code='springSecurity.login.username.label'/>
                    </label>
                    <g:textField name="${usernameParameter ?: 'username'}" class="form-control"
                                 placeholder="${message(code: 'springSecurity.login.username.label')}"
                                 required="" autofocus=""/>
                </p>

                <p>
                    <label for="${passwordParameter ?: 'password'}" class="sr-only">
                        <g:message code='springSecurity.login.password.label'/>
                    </label>
                    <g:passwordField name="${passwordParameter ?: 'password'}" class="form-control"
                                     placeholder="${message(code: 'springSecurity.login.password.label')}"
                                     required="" autofocus=""/>
                </p>
                <input type="submit" class="btn btn-block btn-success"
                       value="${message(code: 'springSecurity.login.button')}"/>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>
