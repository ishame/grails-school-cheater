package scheater.core

import grails.compiler.GrailsCompileStatic
import grails.plugin.springsecurity.SpringSecurityService
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@GrailsCompileStatic
@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class Person implements Serializable {

    private static final long serialVersionUID = 1

    SpringSecurityService springSecurityService

    String username
    String password
    Date dateCreated

    boolean enabled = true
    boolean accountExpired = false
    boolean accountLocked = false
    boolean passwordExpired = false

    Set<Authority> getAuthorities() {
        (PersonAuthority.findAllByPerson(this) as List<PersonAuthority>)*.authority as Set<Authority>
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
    }

    static hasMany = [profiles: Profile]

    static transients = ['springSecurityService']

    static constraints = {
        username blank: false, size: 2..20, matches: /[0-9a-z_-]+/, unique: true
        password nullable: false, blank: false, size: 4..60, password: true
    }

    static mapping = {
        autoTimestamp true
        sort 'id'
        order 'desc'
        password column: '`password`'
    }
}
