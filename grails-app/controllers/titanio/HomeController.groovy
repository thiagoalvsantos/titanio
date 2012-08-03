package titanio

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMINISTRADOR'])
class HomeController {

	def springSecurityService

	def index() {


		Usuario user = springSecurityService.getCurrentUser()

		[projetosUsuario:user.getProjetos()]
	}
}
