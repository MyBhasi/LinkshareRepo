package com.project.person

import com.linkingshare.User
import com.project.readingitem.ReadingItem
import com.project.resource.Resource
import com.project.resourcerating.ResourceRating
import com.project.subscription.Subscription
import com.project.topic.Topic

class Person extends User {
    String firstName
    byte[] photo
    String lastName
    Date dateCreated
    Date lastUpdated
    boolean admin

    static hasMany = [topics: Topic, resources: Resource, readingItems: ReadingItem, resourceRatings: ResourceRating, subscriptions: Subscription]

    static constraints = {
        firstName blank: false
        lastName blank: false
        password validator: { val, obj ->
            if (val?.equalsIgnoreCase(obj.firstName)) {
                return false
            }
        }
        photo nullable: true

    }
}
