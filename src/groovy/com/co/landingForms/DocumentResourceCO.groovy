package com.co.landingForms

import grails.validation.Validateable

/**
 * Created by anuj on 27/10/16.
 */
@Validateable
class DocumentResourceCO {
    String description
  String  topicName

    static constraints={
        description maxSize: 30
        topicName blank: false  ,nullable: false

    }
}
