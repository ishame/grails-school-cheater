package grails.school.cheater

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        '/'(controller: 'portal', action: 'index')
        "/error/$action?"(controller: 'error')
        '404'(controller: 'error', action: 'handle404')
        '500'(controller: 'error', action: 'handle500')
    }
}
