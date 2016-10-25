package com.project.linkresource

import com.project.resource.Resource

class LinkResource extends Resource{
String url
    static constraints = {
        url blank: false

    }
    static mapping = {
        discriminator("link of resource")
    }
}
