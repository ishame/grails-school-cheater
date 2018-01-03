package grails.school.cheater

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration
import org.springframework.context.annotation.PropertySource
import org.springframework.context.annotation.PropertySources

@PropertySources([
        @PropertySource(value = "classpath:scheater_pt.properties"),
])
class Application extends GrailsAutoConfiguration {
    static void main(String[] args) {
        GrailsApp.run(Application, args)
    }
}