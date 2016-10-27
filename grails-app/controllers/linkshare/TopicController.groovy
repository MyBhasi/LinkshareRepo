package linkshare

import com.co.landingForms.TopicCO
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class TopicController {
    def topicService

    def index() {}

    def creatTopic(TopicCO topicCO) {

        topicService.createMethod(topicCO)

    }
}
