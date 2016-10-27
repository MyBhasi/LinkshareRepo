package com.co.landingForms

import org.codehaus.groovy.grails.validation.Validateable

@Validateable
class TopicCO {
    String topicName
    String description
    String visibility

    static constraints= {

    }

}
