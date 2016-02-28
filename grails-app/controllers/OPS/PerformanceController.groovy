package OPS
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class PerformanceController {

    def Scaffold = true;
    def index() {}
}
