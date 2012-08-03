package titanio

import org.codehaus.groovy.grails.validation.MinSizeConstraint;

class Projeto {

	int id
	String nome
	String descricao
	Date dataInicio
	boolean ativo


	static constraints = {
		nome blank: false, minSize:2 , maxSize:50
		descricao blank: false, widget: 'textarea', minSize:5, maxSize: 500
		dataInicio nullable:true
	}

	@Override
	public String toString() {
		return nome
	}
}
