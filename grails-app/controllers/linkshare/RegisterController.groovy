package linkshare

import com.co.UserCO
import com.project.person.Person
import com.regservice.RegisterService
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured

import javax.imageio.spi.RegisterableService

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
    def forget()
    {

    }
    @Secured("permitAll")
    def index()
    {
//        render view: "/register/test"
    }

    def reg(UserCO userCO)
    {

boolean flag= registerService.regserviceMethod(userCo)
        if(flag)
        {
           render ( controller:"" ,view:"",model:[])
        }
else {
            render "you entered anything wrong"
        }

    }
}
