package com.project.resource

import com.linkingshare.User
import com.project.person.Person
import com.project.readingitem.ReadingItem
import com.project.topic.Topic

class Resource  {
String description
    Date dateCreated
    Date dateUpdataed
    Topic topic
static hasMany = [readingitem:ReadingItem]
    static belongsTo = [user:Person]
    static constraints = {
        description blank: false
    }
static  mapping = {
    readingitem cascade: 'delete'

}
}
