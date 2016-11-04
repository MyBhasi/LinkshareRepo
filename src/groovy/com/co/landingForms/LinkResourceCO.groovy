package com.co.landingForms

import grails.validation.Validateable

/**
 * Created by anuj on 27/10/16.
 */
@Validateable
class LinkResourceCO {
    String url
    String description
String topicName


    static constraints={
        url blank: false
        description maxSize: 70
        topicName  blank: false,nullable: false
    }


}