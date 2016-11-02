package linkshare

import com.co.landingForms.TopicCO
import com.project.topic.Topic
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class TopicController {
    def topicService
    def springSecurityService

    def index() {}

    def creatTopic(TopicCO topicCO) {
        if (!Topic.findByTopicName(topicCO.topicName)) {
            if (topicCO.validate()) {
                topicService.createMethod(topicCO)
            } else {
                topicCO.errors.allErrors.each { err ->
                    println(err)
                    render(view: "/admin/postLogin", model: [err:topicCO])
                }
            }
        } else {
            println("Topic already created")
        }


    }
}
