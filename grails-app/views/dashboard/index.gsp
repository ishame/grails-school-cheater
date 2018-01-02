<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="application"/>
        <g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>

    <body>
    <h1 class="page-header">Dashboard</h1>

    <div class="row placeholders">
        <div class="col-xs-6 col-sm-3 placeholder">
            <g:img dir="images" file="picture.jpg" width="200" height="200" class="img-responsive"/>
            <h4>Courses</h4>
            <span class="text-muted">Total: 100</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
            <g:img dir="images" file="picture.jpg" width="200" height="200" class="img-responsive"/>
            <h4>Exam</h4>
            <span class="text-muted">Total: 4</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
            <g:img dir="images" file="picture.jpg" width="200" height="200" class="img-responsive"/>
            <h4>Question</h4>
            <span class="text-muted">Total: 2000</span>
        </div>
        <div class="col-xs-6 col-sm-3 placeholder">
            <g:img dir="images" file="picture.jpg" width="200" height="200" class="img-responsive"/>
            <h4>User</h4>
            <span class="text-muted">Total: 120</span>
        </div>
    </div>
    </body>
</html>