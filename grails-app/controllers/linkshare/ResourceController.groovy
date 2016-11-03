package linkshare

import com.co.landingForms.DocumentResourceCO
import com.co.landingForms.LinkResourceCO
import com.resource.ResourceService
import grails.plugin.springsecurity.annotation.Secured

class ResourceController {
ResourceService  resourceService
    def index() { }

@Secured('IS_AUTHENTICATED_FULLY')
    def saveLinkResource(LinkResourceCO linkResourceCO)
    {
     println("i  m  here")
boolean flag=resourceService.addLinkResource(linkResourceCO)
        if(flag) {
            render view: "/landing/landing"
        } else {
           render( view:"/resource/resource" ,model: [error:"any field  is empty"])
        }

    }
    def saveDocumentResource(DocumentResourceCO documentResourceCO)
    {

       boolean flag= resourceService.addDocumentResource(documentResourceCO,file)
        if(flag)
        {
            render view: "resource/resource"

        }
        else {
            render view:"/resource/resource",model: [error: "any field is empty"]
        }

    }

}
