package titanio

class UtilTagLib {

	static namespace  = "util"

	def springSecurityService

	def projetosUsuario ={  attrs, body->

		out << "<select name'projetoAtivo'>"
		springSecurityService.getCurrentUser().getProjetos().each {
			
				out << "<option>"+ it.nome+  "</option>"
		}
	
		out << "</select>"
		
	}
}
