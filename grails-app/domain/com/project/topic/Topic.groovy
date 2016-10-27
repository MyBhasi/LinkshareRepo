package com.project.topic

import com.linkingshare.User
import com.project.person.Person
import com.project.resource.Resource
import com.project.subscription.Subscription
import projectEnums.Enums

class Topic {
    String topicName;
    Date dateCreated
    Date lastUpdated
    Enums.Visibility visible

    static hasMany = [resources:Resource ,subscriptions:Subscription]
    static belongsTo = [createdbyUser:Person]
    static constraints = {
        topicName blank: false,unique: true

    }
    static mapping = {
        resources cascade: 'delete'
        subscriptions cascade: 'delete'
    }
}
