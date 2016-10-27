package com.co

import com.linkingshare.User
import com.project.person.Person
import grails.validation.Validateable

import javax.validation.Constraint

@Validateable
class UserCO {
    String firstName
    String lastName
    String username
    String password
    String confirmPassword
    byte [] photo

    static constraints={
        importFrom Person
        importFrom User
        photo nullable: true

        username validator: {val,obj->
            if(User.findByUsername(val))
            {
                return "UserCo.property.username.unique.error"
            }
            else
            {
                return true
            }
        }
        confirmPassword blank: false ,validator: {val,obj->

            if(!val?.equals(obj.password))
            {
                return "UserCo.property.confirmpassword.error"
            }

            else
            {
                true
            }
        }

    }



}
