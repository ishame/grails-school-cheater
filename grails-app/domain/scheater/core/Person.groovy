package scheater.core

import grails.plugin.springsecurity.SpringSecurityService
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes = 'username')
@ToString(includes = 'username', includeNames = true, includePackage = false)
class Person implements Serializable {

    private static final long serialVersionUID = 1

    SpringSecurityService springSecurityService

    String username
    String password
    String passwordCheck
    Date dateCreated

    boolean enabled = true
    boolean accountExpired = false
    boolean accountLocked = false
    boolean passwordExpired = false

    Set<Authority> getAuthorities() {
        (PersonAuthority.findAllByPerson(this) as List<PersonAuthority>)*.authority as Set<Authority>
    }

    def afterLoad() {
        passwordCheck = password
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
        passwordCheck = password
    }

    static hasOne = [profile: Profile]

    static hasMany = [authorities: Authority]

    static transients = ['springSecurityService', 'passwordCheck']

    static constraints = {
        username blank: false, size: 2..20, matches: /[0-9a-z_-]+/, unique: true
        password nullable: false, blank: false, size: 4..60, password: true, validator: { String val, Person self ->
            val == self.passwordCheck
        }
        passwordCheck bindable: true
        profile nullable: true
    }

    static mapping = {
        autoTimestamp true
        sort 'id'
        order 'desc'
        password column: '`password`'
    }
}
