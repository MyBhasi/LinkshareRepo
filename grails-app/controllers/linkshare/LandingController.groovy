package linkshare

import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class LandingController {

    def index() {

        render "data saved"
    }
@Secured ('IS_AUTHENTICATED_FULLY')
    def postLogin()
    {
        render(view: "landing")
    }

}
