package grails.school.cheater

import scheater.core.Authority
import scheater.core.Person
import scheater.core.PersonAuthority

class BootStrap {

    def init = { servletContext ->
        if (Authority.count() < 1 && Authority.count() < 1) {
            def role_admin = new Authority(authority: 'ROLE_ADMIN').save()
            def role_user = new Authority(authority: 'ROLE_USER').save()
            def role_supervisor = new Authority(authority: 'ROLE_SUPERVISOR').save()
            def role_superuser = new Authority(authority: 'ROLE_SUPERUSER').save()

            def testUser = new Person(username: 'me', password: 'password').save()

            PersonAuthority.create testUser, role_admin

            PersonAuthority.withSession {
                it.flush()
                it.clear()
            }
        }
    }
    def destroy = {
    }
}
