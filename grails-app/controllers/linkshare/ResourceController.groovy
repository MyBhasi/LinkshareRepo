package linkshare

import com.co.landingForms.DocumentResourceCO
import com.co.landingForms.LinkResourceCO
import com.project.documentresource.DocumentResource
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


    def editResource()
    {

    }

    def  linkUpdate(LinkResourceCO linkResourceCO)
    {

    }

    def documentUpdate()
    {

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

    def  downloadDocument(int  id) {
        String s=DocumentResource.get(id).filePath
        println s
        def file = new File(s)
        response.setHeader "Content-disposition", "attachment; filename=${DocumentResource.get(id).docName}"
        response.setHeader("Content-Length", "file-size")
        response.setContentType("file-mime-type")
        def contentStream = file.newInputStream()
        response.outputStream << contentStream
        webRequest.renderView = false
    }
}
