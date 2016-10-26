package com.project.subscription

import com.linkingshare.User
import com.project.person.Person
import com.project.topic.Topic
import projectEnums.Enums

class Subscription {
//Topic topic
    Person user
    Date dateCreated
    Enums.Seriousness seriousness

    static belongsTo = [topic: Topic]
    static constraints = {
    }
}
