package com.regservice

import com.co.UserCO
import com.project.person.Person
import grails.transaction.Transactional

@Transactional
class RegisterService {

    def regserviceMethod(UserCO userCO) {
        if(userCO.validate())
        {
            new Person(username: userCO.username,password: userCO.password,firstName: userCO.firstName,lastName: userCO.lastName,photo: userCO.photo,admin: false).save(failOnError: true)
            return
        }


    }
}
