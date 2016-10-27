package linkshare

import com.co.UserCO
import com.regservice.RegisterService

class UserController {
RegisterService registerService
    def index() { }
    def save(UserCO  userCO){
        boolean flag= registerService.regServiceMethod(UserCO)
        if(flag)
        {
            render ( controller:"landing" ,view:"index")
        }
        else {
            render "you entered anything wrong"
        }
    }
}
