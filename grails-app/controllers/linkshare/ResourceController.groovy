package linkshare

import com.co.landingForms.DocumentResourceCO
import com.co.landingForms.LinkResourceCO
import com.resource.ResourceService

class ResourceController {
ResourceService  resourceService
    def index() { }


    def saveLinkResource(LinkResourceCO linkResourceCO)
    {
boolean flag=resourceService.addLinkResource(linkResourceCO)
        if(flag) {
            render view: "/landing/landing"
        } else {
           render( view:"/landing/landing" ,model: [error:"any field left is empty"])
        }

    }
    def saveDocumentResource(DocumentResourceCO documentResourceCO)
    {


def file =request.get("document")
       boolean flag= resourceService.addDocumentResource(documentResourceCO,file)
        if(flag)
        {
            render view: "/landing/landing"

        }
        else {
            render view:"/landing/landing",model: [error: "any field is empty"]
        }

    }

}
