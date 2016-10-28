package linkshare

import com.co.UserCO
import com.regservice.RegisterService
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured

class RegisterController {
    SpringSecurityService service
    RegisterService  registerService

    @Secured('IS_AUTHENTICATED_FULLY')
    def login()
    {

    }
    def denied()
    {

    }
    @Secured("permitAll")
    def forget()
    {
render "forget password"
    }
    @Secured("permitAll")
    def index()
    {
//        render view: "/register/test"
    }
@Secured("permitAll")
    def reg(UserCO userCO)
    {
println "${userCO.firstName}"
boolean flag= registerService.regServiceMethod(UserCO)
        if(flag)
        {
           render ( controller:"landing" ,view:"/landing/index")
        }
else {
            render "you entered anything wrong"
        }

    }
}
