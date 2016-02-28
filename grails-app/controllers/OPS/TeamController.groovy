package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class TeamController {
    def Scaffold = true;
    def index() {}
}
