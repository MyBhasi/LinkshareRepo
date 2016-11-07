package com.project.documentresource

import com.project.resource.Resource

class DocumentResource extends Resource{
String  filePath
    String docName
    static constraints = {
        filePath blank: false
    }
    static mapping = {
        discriminator("Document Resource")
    }
}
