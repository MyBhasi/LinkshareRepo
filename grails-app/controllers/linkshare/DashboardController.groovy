package linkshare

import com.project.linkresource.LinkResource
import com.project.person.Person
import com.project.resource.Resource
import com.project.topic.Topic
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest

@Secured('IS_AUTHENTICATED_FULLY')
class DashboardController {

    def springSecurityService

    def index() {}

//    def showPhoto() {
//        Person person=springSecurityService.currentUser
//        MultipartHttpServletRequest mpr=(MultipartHttpServletRequest)request
//        def uploadFile = mpr.getFile(person.photoLocation)
//        response.outputStream << uploadFile.bytes
//        return response.outputStream
//    }

    def recentTopicsAdmin() {
        def c= Topic.createCriteria()
        List<Topic> results=c.list {
            order("dateCreated", "desc")
            maxResults 5
        }
        println results
        render(view: "/admin/adminPostLogin", model: [recentTL:results])
    }

    def recentResourcesAdmin() {
        def c=LinkResource.createCriteria()
        def results= c.list(max: 5) {
            order("dateCreated")
        }
        println results
    }
}
