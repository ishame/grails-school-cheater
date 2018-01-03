<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="application"/>
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}"/>
        <title>
            <g:message code="default.edit.label" args="[entityName]"/>
        </title>
    </head>
    <body>
        <div id="edit-person" class="content scaffold-edit" role="main">
            <h1 class="page-header">
                <g:message code="default.edit.label" args="[entityName]"/>
            </h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.person}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.person}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>

            <g:form resource="${this.person}" method="PUT" class="form-horizontal">
                <g:hiddenField name="version" value="${this.person?.version}"/>
                <div class="form-group">
                    <label for="name" class="col-md-2 control-label"><g:message code="person.name.label"/></label>
                    <div class="col-sm-4">
                        <g:textField name="profile.name" class="form-control" id="name" value="${this.person.profile?.name}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-md-2 control-label"><g:message code="person.email.label"/></label>
                    <div class="col-sm-4">
                        <g:textField name="profile.email" class="form-control" id="email" value="${this.person.profile?.email}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-md-2 control-label"><g:message code="person.phoneNumber.label"/></label>
                    <div class="col-sm-4">
                        <g:textField name="profile.phoneNumber" class="form-control" id="phoneNumber" value="${this.person.profile?.phoneNumber}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-md-2 control-label"><g:message code="person.address.label"/></label>
                    <div class="col-sm-4">
                        <g:textField name="profile.address" class="form-control" id="address" value="${this.person.profile?.address}"/>
                    </div>
                </div>
                <fieldset class="buttons">
                    <input class="btn btn-primary" type="submit"
                           value="${message(code: 'default.button.update.label', default: 'Update')}"/>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
