package linkshare

import com.linkingshare.User
import com.project.person.Person
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class LandingController {
    SpringSecurityService springSecurityService

    def index() {

     render  view: "/landing/dashboard"
    }
@Secured ('IS_AUTHENTICATED_FULLY')
    def postLogin() {
//        render(view: "resource")
    Person currentLoggedInUser = springSecurityService.getCurrentUser();
    if (currentLoggedInUser.isAdmin())
        {
    println(currentLoggedInUser.firstName)
 User user = currentLoggedInUser
    render(view: "/admin/adminPostLogin", model: [user: currentLoggedInUser])
}
    else {
        println(currentLoggedInUser.firstName)
        render(view: "/user/userPostLogin",model: [user: currentLoggedInUser])
    }

    }
    def resource()
    {

   }


}
