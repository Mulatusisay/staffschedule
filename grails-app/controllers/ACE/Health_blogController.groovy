package ACE

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class Health_blogController {
    def Scaffold=true;

    def index() { }

}
