package com.project.resourcerating

import com.linkingshare.User
import com.project.person.Person
import com.project.resource.Resource

class ResourceRating {
// Person user
    Integer score
static belongsTo = [user:Person]
    Resource resource
    static constraints = {
        score range: 1..5
    }
}
