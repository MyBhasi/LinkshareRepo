package linkshare

import com.project.person.Person
import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY', 'ROLE_ADMIN'])
class AdminController {
    def springSecurityService

    def index() {}

    def postLogin() {
        Person person=springSecurityService.currentUser

        render(view: "postLogin", model: [person: person])
    }
}
