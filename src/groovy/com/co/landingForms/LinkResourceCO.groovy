package com.co.landingForms

import grails.validation.Validateable

/**
 * Created by anuj on 27/10/16.
 */
@Validateable
class LinkResourceCO {
    String url
    String description


    static constraints={
        url blank: false
        description maxSize: 30
    }


}