package titanio

class Projeto {

	String nome
	String descricao
	Date dataInicio
	boolean ativo

	static constraints = {
		nome blank: false
		descricao blank: false
	}
}
