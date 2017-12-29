package scheater.core

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.http.HttpStatus

@Secured('IS_AUTHENTICATED_ANONYMOUSLY')
class ErrorController {

    def handle403() {
        // アクセス権限がない場合、利用者にはページが存在しないように見せる。
        response.sendError(HttpStatus.NOT_FOUND.value())
    }

    def handle404() {
        render view: '/notFound'
    }

    def handle500() {
        render view: '/error'
    }
}
