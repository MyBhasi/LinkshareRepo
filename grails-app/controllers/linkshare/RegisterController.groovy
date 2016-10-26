package linkshare

import com.co.UserCO
import com.project.person.Person
import com.regservice.RegisterService
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured

class RegisterController {
    SpringSecurityService service
    RegisterService registerService
    @Secured('IS_AUTHENTICATED_FULLY')
    def login()
    {

    }
    def denied()
    {

    }
    def forget()
    {

    }
    @Secured("permitAll")
    def index()
    {
//        render view: "/register/test"
    }

    def reg(UserCO userco)
    {
if (userco.validate())
{
registerService.regserviceMethod(params)
}
    }
}
