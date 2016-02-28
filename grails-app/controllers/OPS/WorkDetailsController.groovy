package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class WorkDetailsController {
    def Scaffold=true;
    def index() {}
}
