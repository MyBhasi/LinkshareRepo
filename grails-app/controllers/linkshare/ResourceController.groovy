package linkshare

import grails.plugin.springsecurity.annotation.Secured

@Secured('IS_AUTHENTICATED_FULLY')
class ResourceController {

    def index() {
        render(view: "resource")
    }
}
