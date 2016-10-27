package com.topic

import com.co.landingForms.TopicCO
import com.project.person.Person
import com.project.topic.Topic
import grails.transaction.Transactional

@Transactional
class TopicService {
    def springSecurityService

    def serviceMethod() {

    }

    def createMethod(TopicCO topicCO) {

        if (!Topic.findByTopicName(topicCO.topicName)) {
            if (topicCO.validate()) {
                Topic topic=new Topic(topicName: topicCO.topicName, visiblility: topicCO.visibility )
                topic.save(failOnError: true, flush: true)

                Person person=springSecurityService.currentUser
                person.addToTopics(topic)
                person.save(flush: true)
            }
            else{
                topicCO.errors.allErrors.each {err ->
                    println(err)
                }
            }
        }
        else {
            println("Topic already created")
        }
    }
}
