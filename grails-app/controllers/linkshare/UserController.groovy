package linkshare

import com.co.UserCO
import com.linkingshare.User
import com.regservice.RegisterService
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

@Secured('permitAll')
class UserController {
RegisterService registerService
    SpringSecurityService  securityService=new  SpringSecurityService()
    def userPostLogin() { }

    def save(UserCO userCO){
        println "joker"
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        def file=mpr.getFile('photo')
        boolean flag= registerService.regServiceMethod(userCO,file)
        if(flag)
        {
//User user=service.principal
//            println user.id
            securityService.reauthenticate(userCO.username)
            render (view: '/user/userPostLogin')
//            redirect  (controller:"dashboard" ,action:"index" )

        }
        else {

            render  (view:"/landing/index" ,model: [error:userCO])
        }
    }
}
