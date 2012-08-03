package titanio

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMINISTRADOR'])
class ResumoController {


	def index() {

		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[projetoInstanceList: Projeto.list(params), projetoInstanceTotal: Projeto.count()]
	}
}
