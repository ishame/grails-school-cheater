<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="application"/>
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}"/>
        <title>
            <g:message code="default.create.label" args="[entityName]"/>
        </title>
    </head>
    <body>
        <div id="create-person" class="content scaffold-create" role="main">
            <h1 class="page-header">
                <g:message code="default.create.label" args="[entityName]"/>
            </h1>

            <g:hasErrors bean="${this.person}">
                <div class="alert alert-danger" role="alert">
                    <ul>
                        <g:eachError bean="${this.person}" var="error">
                            <li><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>

            <g:form action="save" class="form-horizontal">
                <div class="form-group">
                    <label for="username" class="col-md-2 control-label"><g:message code="person.username.label"/></label>
                    <div class="col-sm-4">
                        <g:textField name="username" class="form-control" id="username" value="${params.username}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-md-2 control-label"><g:message code="person.password.label"/></label>
                    <div class="col-sm-4">
                        <g:passwordField name="password" class="form-control" id="password" value="${params.password}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="passwordCheck" class="col-md-2 control-label"><g:message code="person.passwordCheck.label"/></label>
                    <div class="col-sm-4">
                        <g:passwordField name="passwordCheck" class="form-control" id="passwordCheck" value="${params.passwordCheck}"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-7">
                        <g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                    </div>
                </div>
            </g:form>
        </div>
    </body>
</html>