package scheater.core

class Profile {

    String name
    String email
    String phoneNumber
    String address
    Date lastUpdated

    Person person

    static constraints = {
        name blank: false, size: 2..20, matches: /[A-Za-z ]+/
        email nullable: false, blank: false, size: 4..60, email: true, unique: true
        phoneNumber nullable: false, blank: false, size: 4..60, matches: /[0-9 -]+/
        address nullable: true, blank: true, size: 4..60
    }

    static mapping = {
        autoTimestamp true
        sort 'id'
        order 'desc'
        name column: '`name`'
        email column: '`email`'
    }
}
