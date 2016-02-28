package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_ADMIN'])
class AdminController {
    def Scaffold=true;
    def index() {}
}
