package scheater.user

import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_FULLY')
class PortalController {

    def index() {
        render 'ACADEMY PORTAL'
    }
}
