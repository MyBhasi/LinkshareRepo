package com.resource

import com.co.landingForms.DocumentResourceCO
import com.co.landingForms.LinkResourceCO
import com.project.linkresource.LinkResource
import com.project.resource.Resource
import com.project.documentresource.DocumentResource
import com.project.topic.Topic
import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

@Transactional
class ResourceService {

    def addLinkResource(LinkResourceCO linkResourceCO) {
        println "linkresource Service"

        if (linkResourceCO.validate()) {

          Resource resource=  new LinkResource(url: linkResourceCO.url,description: linkResourceCO.description,topic: Topic.findByTopicName(linkResourceCO.topicName))
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
        if (documentResourceCO.validate()) {
            String m = "home/project"
            file.transferTo(m)

            new DocumentResource(filePath: m).save(failOnError: true, flush: true)
            return true
        } else {
            documentResourceCO.errors.allErrors.each {
                println(it)
            }
            return false

        }
    }

}