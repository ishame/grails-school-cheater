<%@ page import="org.springframework.http.HttpStatus" %>
<!doctype html>
<html>
    <head>
        <title>
            <g:message code="app.title" args="[HttpStatus.INTERNAL_SERVER_ERROR.reasonPhrase]"/>
        </title>
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <meta name="layout" content="application">
        </sec:ifAllGranted>
    </head>

    <body>
        <div class="row">
            <div class="col-sm-12 error">
                <h1>${HttpStatus.INTERNAL_SERVER_ERROR.value()}</h1>

                <p><g:message code="error.500.message"/></p>
                <g:link uri="/" class="btn btn-success">
                    <i class="fa fa-arrow-left btn-icon-left"></i>
                    <g:message code="error.button.top.label"/>
                </g:link>
            </div>
        </div>
    </body>
</html>
