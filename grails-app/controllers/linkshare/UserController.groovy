package linkshare

import com.co.UserCO
import com.regservice.RegisterService
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

@Secured('permitAll')
class UserController {
RegisterService registerService
    def userPostLogin() { }

    def save(UserCO userCO){
        println "joker"
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request;
        def file=mpr.getFile('photo')
        boolean flag= registerService.regServiceMethod(userCO,file)
        if(flag)
        {
            
            render (view: '/admin/adminPostLogin')
        }
        else {

            render  (view:"/landing/index" ,model: [error: "Any field is Left Empty or mismatch password"])
        }
    }
}
