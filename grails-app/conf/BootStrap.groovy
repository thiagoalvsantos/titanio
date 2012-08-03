import titanio.Perfil
import titanio.Projeto
import titanio.TermoAberturaProjeto
import titanio.Usuario
import titanio.UsuarioPerfil

class BootStrap {

	def init = { servletContext ->


		Usuario usuarioThiago = new Usuario()
		usuarioThiago.username = "thiago.alv.santos@gmail.com"
		usuarioThiago.password = "123"
		usuarioThiago.enabled = true
		usuarioThiago.accountLocked = false
		usuarioThiago.accountExpired = false
		usuarioThiago.sexo = 'M'
		usuarioThiago.nome = "Thiago"
		usuarioThiago.sobrenome = "Alves dos Santos"
		usuarioThiago.dataNascimento = new Date()
		usuarioThiago.dddTelefone = "41"
		usuarioThiago.telefone = "36695885"
		usuarioThiago.dddCelular = "41"
		usuarioThiago.celular= "92012494"
		usuarioThiago.save(flush:true)


		def roleDiretoria = new Perfil(authority: 'ROLE_DIRETORIA').save(flush: true)
		def roleGerencia = new Perfil(authority: 'ROLE_GERENCIA').save(flush: true)
		def roleAdministrativo = new Perfil(authority: 'ROLE_ADMINISTRATIVO').save(flush: true)
		def roleSuporte = new Perfil(authority: 'ROLE_SUPORTE').save(flush: true)
		def roleRH = new Perfil(authority: 'ROLE_RH').save(flush: true)
		def roleComercial = new Perfil(authority: 'ROLE_COMERCIAL').save(flush: true)
		def roleAdministrador = new Perfil(authority: 'ROLE_ADMINISTRADOR').save(flush: true)
		def roleTeste = new Perfil(authority: 'ROLE_TESTE').save(flush: true)
		def roleDesenvolvimento = new Perfil(authority: 'ROLE_DESENVOLVIMENTO').save(flush: true)
		def roleAnalise = new Perfil(authority: 'ROLE_ANALISE').save(flush: true)
		def roleConsulta = new Perfil(authority: 'ROLE_CONSULTA').save(flush: true)
		def roleRelatorios = new Perfil(authority: 'ROLE_RELATORIO').save(flush: true)

		


		Projeto projetoTitanio = new Projeto()
		projetoTitanio.nome = "Titanio"
		projetoTitanio.descricao = "Sistena de Projetos"
		projetoTitanio.dataInicio = new Date()
		projetoTitanio.ativo = true
		projetoTitanio.save(flush:true)

		Projeto projetoMercurio = new Projeto()
		projetoMercurio.nome = "Mercurio"
		projetoMercurio.descricao = "Sistena de Projetos"
		projetoMercurio.dataInicio = new Date()
		projetoMercurio.ativo = true
		projetoMercurio.save(flush:true)


		TermoAberturaProjeto termoTitanio = new TermoAberturaProjeto()
		termoTitanio.gerente = usuarioThiago
		termoTitanio.necessidade = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoTitanio.justificativa = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoTitanio.produto = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoTitanio.restricao = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoTitanio.projeto = projetoTitanio
		termoTitanio.save(flush:true)

		TermoAberturaProjeto termoMercurio = new TermoAberturaProjeto()
		termoMercurio.gerente = usuarioThiago
		termoMercurio.necessidade = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoMercurio.justificativa = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoMercurio.produto = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoMercurio.restricao = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
		termoMercurio.projeto = projetoMercurio
		termoMercurio.save(flush:true)

		// usuarioThiago.addToProjetos projetoTitanio
		
		UsuarioPerfil.create usuarioThiago, roleAdministrador, projetoTitanio, true
		UsuarioPerfil.create usuarioThiago, roleAdministrador, projetoMercurio, true

		assert TermoAberturaProjeto.count() == 2
		assert Usuario.count() == 1
		assert Projeto.count() == 2
		assert Perfil.count() == 12
		assert UsuarioPerfil.count() == 2
	}
	def destroy = {
	}
}
