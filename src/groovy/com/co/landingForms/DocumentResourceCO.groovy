package com.co.landingForms

import grails.validation.Validateable

/**
 * Created by anuj on 27/10/16.
 */
@Validateable
class DocumentResourceCO {
    String description
    byte[] document

    static constraints={
        description maxSize: 30
        document nullable: false
    }
}
