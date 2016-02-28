package OPS

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TrainingController {
    def Scaffold=true;
    def index() {}
}
