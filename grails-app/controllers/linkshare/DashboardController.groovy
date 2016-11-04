package linkshare

import com.project.person.Person
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured ("IS_AUTHENTICATED_FULLY")
class DashboardController {
SpringSecurityService  springSecurityService
    def index() {
        Person currentLoggedInUser = springSecurityService.getCurrentUser();
//        flash.message=[user:currentLoggedInUser]
        if (currentLoggedInUser.isAdmin())
        {
            println(currentLoggedInUser.firstName)
//            Person user = currentLoggedInUser
           redirect  (controller:"admin",action: "adminPostLogin")
        }
        else {
            println(currentLoggedInUser.firstName)
            redirect  (controller:"user",action: "userPostLogin")
        }

    }
}
