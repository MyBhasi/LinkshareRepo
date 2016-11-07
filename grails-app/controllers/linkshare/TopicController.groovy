package linkshare

import com.co.landingForms.TopicCO
import com.project.person.Person
import com.project.topic.Topic
import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_FULLY')
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

    def editTopic() {
println "bye"
        [topicId: params.topicId]
    }

    def updateTopic(TopicCO topicCO) {
 println ("update")
        if (!Topic.findByTopicName(topicCO.topicName)) {
            if (topicCO.validate()) {
                Topic topic = Topic.findById(params.topicId)
                topic.topicName = params.topicName
                topic.description = params.description
                topic.visiblility = params.visibility

                topic.save(flush: true, failOnError: true)

            } else {
                topicCO.errors.allErrors.each { err ->
                    println(err)
                    render(view: "/topic/editTopic", model: [err: topicCO])
                }
            }

        } else {
            println("Topic already created")
            render(view: "/topic/editTopic", model: [err: topicCO])
        }

//        Topic topic=Topic.findById(params.topicId)
//        if (topic) {
//            topic.topicName = params.topicName
//            topic.description = params.description
//            topic.visiblility = params.visibility
//
//            if (!Topic.findByTopicName(topic.topicName)) {
//                if (topic.validate()) {
//                    topic.save(flush: true, failOnError: true)
//                } else {
//                    topic.errors.allErrors.each { err ->
//                        println(err)
//                        render(view: "/topic/editTopic", model: [err: topic])
//                    }
//                }
//            } else {
//                println("Topic already created")
//            }
//        }
//        else {
//            render(view:"/topic/editTopic", model: [err:topic] )
//        }
    }


}
