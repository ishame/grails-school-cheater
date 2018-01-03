<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="application"/>
    <g:set var="entityName" value="${message(code: 'appli.person.label', default: 'Person')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="row">
    <div class="col-sm-12 col-md-12 col-lg-12">
        <a href="${createLink(controller: 'person', action: 'create')}" class="btn btn-primary pull-right">
            <g:message code="default.new.label" args="[message(code: 'appli.person.label')]"/>
        </a>
    </div>
</div>

<div class="row">
    <div class="col-sm-12 col-md-12 col-lg-12">
        <h1 class="page-header"><g:message code="default.list.label" args="[message(code: 'appli.person.label')]"/></h1>
        <g:each var="person" in="${personList}">
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <g:link action="show" id="${person.id}">
                    <div class="person__box">
                        <kbd>${person.username}</kbd>
                        <h6 class="text-muted">${person.authorities.authority.join(' , ')}</h6>

                        <p><abbr title="Date Created"><i class="fa fa-calendar-o"></i></abbr>&nbsp;<g:formatDate
                                date="${person?.dateCreated}"
                                format="${scheater.core.util.PropertyUtils.loadProperty('datetime.format')}"/></p>
                    </div>
                </g:link>
                <div class="person-box__footer">
                    <div class="btn-group">
                        <g:link class="btn btn-danger btn-sm" action="resetPassword" resource="${this.person}">
                            <g:message code="default.button.reset.label" args="[message(code: 'springSecurity.login.password.label')]"/>
                        </g:link>
                    </div>

                    <div class="btn-group">
                        <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#authorityDialog">
                            <g:message code="default.button.change.label" args="[message(code: 'appli.authority.label')]"/>
                        </button>
                    </div>
                </div>
                <!-- authorityDialog -->
                <div class="modal fade" id="authorityDialog" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Modal Header</h4>
                            </div>
                            <div class="modal-body">
                                <p>Some text in the modal.</p>
                                <div class="row">
                                    <g:select from="${scheater.core.Authority.list()}" name="authorities"
                                              optionKey="id" optionValue="authority" value="${person.authorities?.id}"
                                              id="authority" class="chosen-authority" multiple="true"
                                              data-placeholder="${message(code: 'person.authority.placeholder')}">
                                    </g:select>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </g:each>
    </div>
</div>
</body>
</html>