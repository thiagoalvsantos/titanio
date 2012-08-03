package titanio

import grails.plugins.springsecurity.Secured

import org.springframework.dao.DataIntegrityViolationException


@Secured(['ROLE_ADMINISTRADOR'])
class ProjetoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
		// TODO Melhorar paginação no scaffold 
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        //[projetoInstanceList: Projeto.list(params), projetoInstanceTotal: Projeto.count()]
		[projetoInstanceList: Projeto.list(), projetoInstanceTotal: Projeto.count()]
    }

    def create() {
        [projetoInstance: new Projeto(params)]
		[termoAberturaProjetoInstance: new TermoAberturaProjeto(params)]
    }

    def save() {
        def projetoInstance = new Projeto(params)
		def termoAberturaProjetoInstance = new TermoAberturaProjeto(params)
		termoAberturaProjetoInstance.projeto = projetoInstance
		
        if (!projetoInstance.save(flush: true) && !termoAberturaProjetoInstance.save(flush: true) ) {
            render(view: "create", model: [projetoInstance: projetoInstance, termoAberturaProjetoInstance:TermoAberturaProjeto])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'projeto.label', default: 'Projeto'), projetoInstance.id])
        redirect(action: "show", id: projetoInstance.id)
    }

    def show() {
        def projetoInstance = Projeto.get(params.id)
	
        if (!projetoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), params.id])
            redirect(action: "list")
            return
        }

        [projetoInstance: projetoInstance]
    }

    def edit() {
        def projetoInstance = Projeto.get(params.id)
		def termoAberturaProjetoInstance = TermoAberturaProjeto.findByProjeto = projetoInstance
        if (!projetoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), params.id])
            redirect(action: "list")
            return
        }

        [projetoInstance: projetoInstance]
    }

    def update() {
        def projetoInstance = Projeto.get(params.id)
        if (!projetoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (projetoInstance.version > version) {
                projetoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'projeto.label', default: 'Projeto')] as Object[],
                          "Another user has updated this Projeto while you were editing")
                render(view: "edit", model: [projetoInstance: projetoInstance])
                return
            }
        }

        projetoInstance.properties = params

        if (!projetoInstance.save(flush: true)) {
            render(view: "edit", model: [projetoInstance: projetoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'projeto.label', default: 'Projeto'), projetoInstance.id])
        redirect(action: "show", id: projetoInstance.id)
    }

    def delete() {
        def projetoInstance = Projeto.get(params.id)
        if (!projetoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'projeto.label', default: 'Projeto'), params.id])
            redirect(action: "list")
            return
        }

        try {
            projetoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'projeto.label', default: 'Projeto'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'projeto.label', default: 'Projeto'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
