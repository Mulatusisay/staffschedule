package ACE

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class ETDirectoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ETDirectory.list(params), model: [ETDirectoryInstanceCount: ETDirectory.count()]
    }
    def search(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ETDirectory.list(params), model: [ETDirectoryInstanceCount: ETDirectory.count()]
    }
    def searchcontact(){

    }
    def show(ETDirectory ETDirectoryInstance) {
        respond ETDirectoryInstance
    }

    def create() {
        respond new ETDirectory(params)
    }

    @Transactional
    def save(ETDirectory ETDirectoryInstance) {
        if (ETDirectoryInstance == null) {
            notFound()
            return
        }

        if (ETDirectoryInstance.hasErrors()) {
            respond ETDirectoryInstance.errors, view: 'create'
            return
        }

        ETDirectoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ETDirectory.label', default: 'ETDirectory'), ETDirectoryInstance.id])
                redirect ETDirectoryInstance
            }
            '*' { respond ETDirectoryInstance, [status: CREATED] }
        }
    }

    def edit(ETDirectory ETDirectoryInstance) {
        respond ETDirectoryInstance
    }

    @Transactional
    def update(ETDirectory ETDirectoryInstance) {
        if (ETDirectoryInstance == null) {
            notFound()
            return
        }

        if (ETDirectoryInstance.hasErrors()) {
            respond ETDirectoryInstance.errors, view: 'edit'
            return
        }

        ETDirectoryInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ETDirectory.label', default: 'ETDirectory'), ETDirectoryInstance.id])
                redirect ETDirectoryInstance
            }
            '*' { respond ETDirectoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ETDirectory ETDirectoryInstance) {

        if (ETDirectoryInstance == null) {
            notFound()
            return
        }

        ETDirectoryInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ETDirectory.label', default: 'ETDirectory'), ETDirectoryInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ETDirectory.label', default: 'ETDirectory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
