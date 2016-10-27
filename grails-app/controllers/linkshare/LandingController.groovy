package linkshare

import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class LandingController {

    def index() {}


    def postLogin() {

        render(view: "landing")
    }
}