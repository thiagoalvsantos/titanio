import titanio.Projeto;

class BootStrap {

    def init = { servletContext ->
		
		Projeto p
		
		for(int i=0; i < 150; i++){
			p = new Projeto()
			p.nome = "Projeto "+i
			p.descricao = "Descrição "+i
			p.dataInicio = new Date()
			p.ativo = true
			p.save()
		}
		
    }
    def destroy = {
    }
}
