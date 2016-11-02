package linkshare

import com.project.person.Person
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class AdminController {
    def springSecurityService

    def index() {}

    def postLogin() {
        Person person=springSecurityService.currentUser

        render(view: "postLogin", model: [person: person])
    }
}
