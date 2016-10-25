package com.co

import com.linkingshare.User
import com.project.person.Person
import grails.validation.Validateable

import javax.validation.Constraint

@Validateable
class UserCO {
    String firstName
    String lastName
    String registeredEmail
    String username
    String password
    String confirmpassword

    static constraints={
        importFrom Person
        importFrom User
        confirmpassword blank: false ,validator: {val,obj->

            if(!val?.equals(obj.password))
            {
                return "UserCo.property.confirmpassword.error"
            }

        }

    }



}
