package com.project.person

import com.linkingshare.User
import com.project.readingitem.ReadingItem
import com.project.resource.Resource
import com.project.resourcerating.ResourceRating
import com.project.subscription.Subscription
import com.project.topic.Topic

class Person extends User{
String firstName
    byte[] photo
String lastName
Date dateCreated
    Date lastUpdated
    boolean admin
  String registeredemail
 static hasMany = [topics:Topic,resource:Resource,readingItem:ReadingItem,resourcerating:ResourceRating]

    static constraints = {
        firstName blank: false
        lastName blank:false
        password validator: {val,obj->
            if(val?.equalsIgnoreCase(obj.firstName))
            {
                return false
            }
        }

    }
}
