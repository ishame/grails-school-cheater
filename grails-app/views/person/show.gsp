<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="application"/>
    <g:set var="entityName" value="${message(code: 'appli.person.label', default: 'Person')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="row">
    <div class="col-sm-12 col-md-12 col-lg-12">
        <h1 class="page-header"><g:message code="default.info.label" args="[message(code: 'appli.person.label')]"/></h1>

        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
            <div class="panel panel-default">
                <div class="panel-heading text-center"><i class="fa fa-user-o"></i>&nbsp;${person?.username}</div>
                <div class="panel-body">
                <g:if test="${person.profile}">
                    <p><i class="fa fa fa-address-card-o"></i>&nbsp;<strong>${person.profile?.name}</strong></p>
                    <p><i class="fa fa-phone"></i>&nbsp;${person.profile?.phoneNumber}</p>
                    <p><i class="fa fa-envelope-o"></i>&nbsp;${person.profile?.email}</p>
                    <p><abbr title="${message(code: 'person.lastUpdated.label')}"><i class="fa fa-calendar-o"></i></abbr>&nbsp;<g:formatDate
                            date="${person.profile?.lastUpdated}" format="EEE, MMM dd, yyyy"/></p>
                    <p><i class="fa fa-institution"></i>&nbsp;${person.profile?.address}</p>
                </g:if>
                    <div class="col-sm-6">
                        <g:link class="btn btn-primary btn-sm btn-block" action="edit" resource="${this.person}">
                            <i class="fa fa-edit"></i>&nbsp;<g:message code="default.button.edit.label"/>
                        </g:link>
                    </div>
                    <div class="col-sm-6">
                        <g:link class="btn btn-danger btn-sm btn-block" action="delete" resource="${this.person}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
                            <i class="fa fa-remove"></i>&nbsp;<g:message code="default.button.delete.label" default="Delete"/>
                        </g:link>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-6 col-md-8 col-lg-9">
            <div class="activities-box">
                <div class="panel panel-default">
                    <div class="panel-heading text-center">Activities</div>
                    <div class="panel-body">
                        <p class="text-center"><strong>LOADING...</strong></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>

<div>

</div>
</body>
</html>
