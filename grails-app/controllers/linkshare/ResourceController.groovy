package linkshare

import com.co.landingForms.DocumentResourceCO
import com.co.landingForms.LinkResourceCO
import com.resource.ResourceService
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest
@Secured('IS_AUTHENTICATED_FULLY')
class ResourceController {
ResourceService  resourceService
    def index() { }
    def resource()
    {

    }

@Secured('IS_AUTHENTICATED_FULLY')
    def saveLinkResource(LinkResourceCO linkResourceCO)
    {
     println("i  m  here")
boolean flag=resourceService.addLinkResource(linkResourceCO)
        if(flag) {
            render view: "/resource/" +
                    "resource"
        } else {
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

}
