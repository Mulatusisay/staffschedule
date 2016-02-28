package ACE

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class IdeasController {
    def Scaffold=true

    def index() {}
}
