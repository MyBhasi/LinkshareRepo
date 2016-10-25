package linkshare

import com.project.person.Person
import grails.plugin.springsecurity.SpringSecurityService
import org.springframework.security.access.annotation.Secured

class RegisterController {
    SpringSecurityService service

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
    def index()
    {

    }

    def reg()
    {

    }
}
