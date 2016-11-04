package com.regservice

import com.co.UserCO
import com.linkingshare.Role
import com.linkingshare.User
import com.linkingshare.UserRole
import com.project.person.Person
import grails.plugin.mail.MailService
import org.springframework.web.multipart.MultipartFile

import javax.transaction.Transactional

@Transactional
class RegisterService {
MailService mailService
    def regServiceMethod(UserCO userCO,MultipartFile file) {
        println "hello"

        if(userCO.validate())
        {
            String m = "/home/anuj/project/photo/"
            String  n=file.getOriginalFilename()
            println(n)
            if(!file.isEmpty()) {
                file.transferTo(new File(m+n))
            }

String mail=userCO.username

           User user = new Person(username: userCO.username,password: userCO.password,firstName: userCO.firstName,lastName: userCO.lastName,photoLocation:m+n,admin: false).save(failOnError: true)
            Role role=Role.findByAuthority("Role_User")
            UserRole.create(user,role,true)
println "joker"
            mailService.sendMail
                {
                    to mail
                    subject "Welcome! message  from  LinkShare"
                    body " hi ${userCO.firstName} ${userCO.lastName}, you  are  sucessfully Registered.It is  pleasure to you have on board."


                }


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
