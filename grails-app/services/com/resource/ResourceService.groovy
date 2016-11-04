package com.resource

import com.co.landingForms.DocumentResourceCO
import com.co.landingForms.LinkResourceCO
import com.linkingshare.User
import com.project.linkresource.LinkResource
import com.project.person.Person
import com.project.resource.Resource
import com.project.documentresource.DocumentResource
import com.project.topic.Topic
import grails.plugin.springsecurity.SpringSecurityService
import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

@Transactional
class ResourceService {
 SpringSecurityService springSecurityService
//    Person person=springSecurityService.getCurrentUser()
    def addLinkResource(LinkResourceCO linkResourceCO) {
        println "linkresource Service"
println(linkResourceCO.topicName)
       Person person=springSecurityService.getCurrentUser();
       println person.getClass()
        if (linkResourceCO.validate()) {

          LinkResource resource=  new LinkResource(url: linkResourceCO.url,description: linkResourceCO.description,topic: Topic.findById(linkResourceCO.topicName),user: person)
              resource.save(failOnError: true, flush: true)
            return true
        } else {
            linkResourceCO.errors.allErrors.each {
                println(it)
            }
            return false

        }
    }

    def addDocumentResource(DocumentResourceCO documentResourceCO, MultipartFile file) {
        if (documentResourceCO.validate()&&!(file.empty)) {
            println("hi")
            Person person=springSecurityService.getCurrentUser();
            String m = "/home/anuj/project/document/"
          String s=file.getOriginalFilename()
            println(s)

            file.transferTo(new File(m+s))

           Resource resource= new DocumentResource(filePath: m+s,description: documentResourceCO.description,topic:Topic.findById(documentResourceCO.topicName),user: person ).save(failOnError: true, flush: true)
            return true
        } else {
            documentResourceCO.errors.allErrors.each {
                println(it)
            }
            return false

        }
    }

}