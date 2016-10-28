package linkshare

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class AdminController {

    def index() {}

    def postLogin() {

        render(view: "postLogin")
    }
}
