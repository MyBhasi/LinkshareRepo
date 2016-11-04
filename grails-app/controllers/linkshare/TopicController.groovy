package linkshare

import com.co.landingForms.TopicCO
import com.project.person.Person
import com.project.topic.Topic
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class TopicController {
    def topicService
    def springSecurityService

    def index() {}

    def createTopic(TopicCO topicCO) {
        if (!Topic.findByTopicName(topicCO.topicName)) {
            if (topicCO.validate()) {
                topicService.createMethod(topicCO)
            } else {
                topicCO.errors.allErrors.each { err ->
                    println(err)
                    render(view: "/topic/index", model: [err:topicCO])
                }
            }
        } else {
            println("Topic already created")
        }

    }

    def showTopics() {
        Person person=springSecurityService.currentUser
        List<Topic> topicList=Topic.findAllByCreatedbyUser(person)
        render(view: "showTopics", model: [topicList:topicList])
    }


}
