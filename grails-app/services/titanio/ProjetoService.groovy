package titanio

class ProjetoService {

	def listar() {

		return Projeto.listOrderByNome()
	}
}
