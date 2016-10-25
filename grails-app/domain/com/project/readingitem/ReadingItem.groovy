package com.project.readingitem

import com.linkingshare.User
import com.project.person.Person
import com.project.resource.Resource

class ReadingItem {
Resource resource
// Person user
    Boolean isRead
static belongsTo =[user:Person]
    static constraints = {
    }
}
