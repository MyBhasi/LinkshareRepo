package com.project.topic

import com.linkingshare.User
import com.project.documentresource.DocumentResource
import com.project.linkresource.LinkResource
import com.project.person.Person
import com.project.resource.Resource
import com.project.subscription.Subscription
import projectEnums.Enums

class Topic {
    String topicName;
    Date dateCreated
    Date lastUpdated
    String description
    Enums.Visibility visiblility

    static hasMany = [resources: Resource, subscriptions: Subscription]
    static belongsTo = [createdbyUser: Person]

    static constraints = {
        topicName blank: false, unique: true

    }
    static mapping = {
        resources cascade: 'delete'
        subscriptions cascade: 'delete'
    }

    public static def recentTopicsAdmin() {
        def c = Topic.createCriteria()
        def results = c.list {
            order("dateCreated", "desc")
            maxResults 5
        }
        println results
        return results
    }

    public static def recentLinkResourcesAdmin() {
        def c = LinkResource.createCriteria()
        def results = c.list(max: 5) {
            order("dateCreated", "desc")
        }
        println results
        return results
    }

    public static def recentDocumentResourcesAdmin() {
        def c = DocumentResource.createCriteria()
        def results = c.list(max: 5) {
            order("dateCreated", "desc")
        }
        println results
        return results
    }
}