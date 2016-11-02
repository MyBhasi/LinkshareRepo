package com.co.landingForms

import com.project.topic.Topic
import org.codehaus.groovy.grails.validation.Validateable

@Validateable
class TopicCO {
    String topicName
    String description
    String visibility

    static constraints= {
        topicName nullable: false, validator: {val, obj ->
            if (val==null) {
                return ("TopicCO.topicName.null.error")
            }
            else {
                return true
            }
        }

    }

}
