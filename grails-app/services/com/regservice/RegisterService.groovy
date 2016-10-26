package com.regservice

import com.co.UserCO
import com.project.person.Person
import grails.transaction.Transactional

@Transactional
class RegisterService {

    def regserviceMethod(UserCO userCO) {
        println "hello"
        if(userCO.validate())
        {


println "service"
            new Person(username: userCO.username,password: userCO.password,firstName: userCO.firstName,lastName: userCO.lastName,photo: userCO.photo,admin: false).save(failOnError: true)

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
