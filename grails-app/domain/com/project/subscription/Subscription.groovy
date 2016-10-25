package com.project.subscription

import com.linkingshare.User
import com.project.person.Person
import com.project.seriousness.Seriousness
import com.project.topic.Topic

class Subscription {
//Topic topic
    Person user
    Date datesubscriped
    Seriousness seriousness
static belongsTo = [topic:Topic]
    static constraints = {
    }
}
