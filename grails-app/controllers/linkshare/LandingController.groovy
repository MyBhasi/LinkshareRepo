package linkshare

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class LandingController {

    def index() {}
}
