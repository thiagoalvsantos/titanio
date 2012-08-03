package titanio

import java.util.Date;

class Usuario {

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	// Atributos do Usuário
	String nome
	String sobrenome
	Date dataNascimento
	char sexo
	String dddTelefone
	String telefone
	String dddCelular
	String celular

	static constraints = {
		username blank: false, unique: true, email: true
		password blank: false
	}

	static mapping = { password column: '`password`' }

	Set<Perfil> getAuthorities() {
		UsuarioPerfil.findAllByUsuario(this).collect { it.perfil } as Set
	}
	
	Set<Projeto> getProjetos() {
		UsuarioPerfil.findAllByUsuario(this).collect { it.projeto } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
