package scheater.admin

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class DashboardController {

    def index() {
        render 'ADMIN DASHBOARD'
    }
}
