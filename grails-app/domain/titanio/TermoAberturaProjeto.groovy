package titanio

class TermoAberturaProjeto {

	Usuario gerente
	String necessidade
	String justificativa
	String produto
	String restricao

	static belongsTo = [projeto:Projeto]

	static constraints = {
		projeto nullable:true
		gerente nullable:false
		necessidade nullable:false, minLength:10, maxLength:1000
		justificativa nullable:false, minLength:10, maxLength:1000
		produto nullable:false, minLength:10, maxLength:1000
		restricao nullable:false, minLength:10, maxLength:1000
	}
}
