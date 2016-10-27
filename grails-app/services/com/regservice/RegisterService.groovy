package com.regservice

import com.co.UserCO
import com.linkingshare.Role
import com.linkingshare.User
import com.linkingshare.UserRole
import com.project.person.Person

import javax.transaction.Transactional

@Transactional
class RegisterService {

    def regServiceMethod(UserCO userCO) {
        println "hello"
        if(userCO.validate())
        {


println "service"
           User user = new Person(username: userCO.username,password: userCO.password,firstName: userCO.firstName,lastName: userCO.lastName,photo: userCO.photo,admin: false).save(failOnError: true)

Role role=new Role(authority: "Role_User").save(failOnError: true)
            UserRole.create(user,role,true)

            return true}

else
        {
            userCO.errors.allErrors.each {err ->
                println(err)
            }
            return false
        }
    }
}
