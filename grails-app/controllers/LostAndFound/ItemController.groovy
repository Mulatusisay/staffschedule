package LostAndFound
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ItemController {
    def Scaffold=true;

    def index() {}
}
