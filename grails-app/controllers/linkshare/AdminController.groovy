package linkshare

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class AdminController {

    def index() {}
@Secured("IS_AUTHENTICATED_FULLY")
    def adminPostLogin() {

    }
}
