package linkshare

import com.co.landingForms.DocumentResourceCO
import com.co.landingForms.LinkResourceCO
import com.project.person.Person
import com.project.resource.Resource
import com.resource.ResourceService
import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest
@Secured('IS_AUTHENTICATED_FULLY')
class ResourceController {
    SpringSecurityService   springSecurityService
ResourceService  resourceService
    def index() {
        render view: "resource"
    }

@Secured('IS_AUTHENTICATED_FULLY')
    def saveLinkResource(LinkResourceCO linkResourceCO)
    {
     println("i  m  here")
boolean flag=resourceService.addLinkResource(linkResourceCO)
        println flag
        if(flag) {
            println("i  m  there")
            render (view: "resource",model: [error:linkResourceCO])

        } else {
            println("i  m  there")
           render( view:"/resource/resource" ,model: [error:linkResourceCO])
        }

    }
    def saveDocumentResource(DocumentResourceCO documentResourceCO)
    {
        println "hello"
        println request.getClass()
MultipartHttpServletRequest mpr=(MultipartHttpServletRequest)request;
        def  file=mpr.getFile("document")
       boolean flag= resourceService.addDocumentResource(documentResourceCO,file)
        if(flag)
        {
            render view: "resource"

        }
        else {
            render view:"resource",model: [error: documentResourceCO]
        }

    }
    def showResource()
    { Person person=springSecurityService.currentUser
        List<Resource> resourceList=Resource.findAllByUser(person)
        render(view: "showResource", model: [resourceList:resourceList])

    }

}
