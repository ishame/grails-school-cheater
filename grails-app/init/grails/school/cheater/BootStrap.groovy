package grails.school.cheater

import scheater.core.Authority
import scheater.core.Person
import scheater.core.PersonAuthority
import scheater.core.util.PropertyUtils

class BootStrap {

    def init = { servletContext ->
        if (Authority.count() < 1 && Person.count() < 1) {
            def role_admin = new Authority(authority: PropertyUtils.loadProperty('role.admin')).save()
            def role_user = new Authority(authority: PropertyUtils.loadProperty('role.user')).save()
            def role_supervisor = new Authority(authority: PropertyUtils.loadProperty('role.supervisor')).save()
            def role_superuser = new Authority(authority: PropertyUtils.loadProperty('role.superuser')).save()

            def person_admin = new Person(username: 'admin', password: 'password', passwordCheck: 'password').save()
            def person_user = new Person(username: 'user', password: 'password', passwordCheck: 'password').save()
            def person_supervisor = new Person(username: 'supervisor', password: 'password', passwordCheck: 'password').save()
            def person_superuser = new Person(username: 'superuser', password: 'password', passwordCheck: 'password').save()

            PersonAuthority.create person_admin, role_admin
            PersonAuthority.create person_admin, role_user
            PersonAuthority.create person_admin, role_supervisor
            PersonAuthority.create person_admin, role_superuser
            PersonAuthority.create person_user, role_user
            PersonAuthority.create person_supervisor, role_supervisor
            PersonAuthority.create person_superuser, role_superuser

            PersonAuthority.withSession {
                it.flush()
                it.clear()
            }
        }
    }
    def destroy = {
    }
}
