package LostAndFound
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ClaimLostItemController {

    def Scaffold = true;
    def index() { }
}
