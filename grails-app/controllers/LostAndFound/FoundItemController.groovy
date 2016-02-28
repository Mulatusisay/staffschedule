package LostAndFound

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class FoundItemController {

    def Scaffold = true;
    def index() {}
}
