package linkshare

import com.co.UserCO
import com.project.person.Person
import com.regservice.RegisterService
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured
import org.springframework.web.multipart.MultipartFile

import javax.imageio.spi.RegisterableService

class RegisterController {
    SpringSecurityService service
    RegisterService  registerService
//    @Secured('IS_AUTHENTICATED_FULLY')
//    def login()
//    {
//
//    }
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
//@Secured("permitAll")
//   def submit()
////    {
////        println "hello"
//////        MultipartFile file =request.getFile('photo')
//////        flash.message=[file:file]
////redirect (controller:"user",action:"save")
//
//    }
}
