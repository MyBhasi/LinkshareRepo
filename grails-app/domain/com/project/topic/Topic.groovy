package com.project.topic

import com.linkingshare.User
import com.project.person.Person
import com.project.resource.Resource
import com.project.subscription.Subscription
import com.project.visibility.Visibility

class Topic {
    String topicName;
    Date dateCreated
    Date lastUpdated
    Visibility visible
    static hasMany = [resources:Resource ,subscription:Subscription]
    static belongsTo = [createdbyUser:Person]
    static constraints = {
        topicName blank: false,unique: true

    }
    static mapping = {
        resources cascade: 'delete'
        subscription cascade: 'delete'
    }
}
