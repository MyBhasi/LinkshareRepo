package linkshare

import com.project.documentresource.DocumentResource
import com.project.person.Person
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured ("IS_AUTHENTICATED_FULLY")
import com.project.linkresource.LinkResource
import com.project.person.Person
import com.project.resource.Resource
import com.project.topic.Topic
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

@Secured('IS_AUTHENTICATED_FULLY')
class DashboardController {
    SpringSecurityService springSecurityService

    def index() {
        Person currentLoggedInUser = springSecurityService.getCurrentUser();
//        flash.message=[user:currentLoggedInUser]
        if (currentLoggedInUser.isAdmin()) {
            println(currentLoggedInUser.firstName)
//            Person user = currentLoggedInUser
            redirect(controller: "admin", action: "adminPostLogin")
        } else {
            println(currentLoggedInUser.firstName)
            redirect(controller: "user", action: "userPostLogin")
        }
    }

    def renderImage = {

        Person person=(springSecurityService.currentUser)
        def file = new File(person.photoLocation)
        def img = file.bytes
        response.contentType = 'image/jpg' // or the appropriate image content type
        response.outputStream << img
       // response.outputStream.flush()
    }
}
