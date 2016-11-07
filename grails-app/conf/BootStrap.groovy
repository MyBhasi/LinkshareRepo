import com.linkingshare.Role
import com.linkingshare.User
import com.linkingshare.UserRole
import com.project.person.Person
import com.project.topic.Topic
import projectEnums.Enums

class BootStrap {


    def init = { servletContext ->

        Role userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true, flush: true)
        Role adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true, flush: true)

        User adminUser=Person.findByUsername("ashish@nexthoughts.com") ?:
                new Person(username: "ashish@nexthoughts.com", password: "ashishdefault", firstName: "Ashish", lastName: "Gautam", admin: true, enabled: true).save(failOnError: true, flush: true)

        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create(adminUser, adminRole, true)
        }

        User adminUser1=Person.findByUsername("bhaskar@nexthoughts.com") ?:
                new Person(username: "bhaskar@nexthoughts.com", password: "bhaskardefault", firstName: "Bhaskar", lastName: "Singh", admin: true, enabled: true).save(failOnError: true, flush: true)

        if (!adminUser1.authorities.contains(adminRole)) {
            UserRole.create(adminUser1, adminRole, true)
        }

        User userUser=Person.findByUsername("lalu@nexthoughts.com") ?:
                new Person(username: "lalu@nexthoughts.com", password: "laludefault", firstName: "Lalu", lastName: "Yadav", admin: false, enabled: true).save(failOnError: true, flush: true)

        if (!userUser.authorities.contains(userRole)) {
            UserRole.create(userUser, userRole, true)
        }
        Topic topic=Topic.findOrSaveWhere(description: "single body of written works",topicName: "literature",visiblility: Enums.Visibility.PUBLIC,createdbyUser:adminUser1 )
        Topic topic1=Topic.findOrSaveWhere(description: "java plateform dependent language",topicName: "Groovy",visiblility: Enums.Visibility.PUBLIC,createdbyUser:adminUser )


    }
    def destroy = {
    }
}