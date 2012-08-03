<%@ page import="titanio.Projeto"%>



<p
	class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'nome', 'error')} required">
	<label for="nome"> <g:message code="projeto.nome.label"
			default="Nome" />
	</label>
	<g:textField name="nome" maxlength="50" required=""
		value="${projetoInstance?.nome}" style="width:400px;" />
</p>

<p
	class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'descricao', 'error')} required">
	<label for="descricao"> <g:message
			code="projeto.descricao.label" default="Descricao" />
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="500"
		required="" value="${projetoInstance?.descricao}"
		style="width:400px; height:150px; " />
</p>

<p
	class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'dataInicio', 'error')} ">
	<label for="dataInicio"> <g:message
			code="projeto.dataInicio.label" default="Data Inicio" />
	</label>
	<g:datePicker name="dataInicio" precision="day"
		value="${projetoInstance?.dataInicio}" />
</p>

<p
	class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'ativo', 'error')} ">
	<label for="ativo"> Status </label>
	<g:checkBox name="ativo" value="${projetoInstance?.ativo}" />
	<label for="ativo"> <g:message code="projeto.ativo.label"
			default="Ativo" />
	</label>
</p>

<fieldset>
	<legend>Termo de Abertura</legend>

	<p
		class="fieldcontain ${hasErrors(bean: termoAberturaProjetoInstance, field: 'necessidade', 'error')} required">
		<label for="necessidade"> <g:message
				code="termoAberturaProjeto.necessidade.label" default="Necessidade" />
		</label>

		<g:textArea name="necessidade" cols="40" rows="5" maxlength="1000"
			required="" value="${termoAberturaProjetoInstance?.necessidade}"
			style="width:400px; height:120px; " />
	</p>
	
	<p
		class="fieldcontain ${hasErrors(bean: termoAberturaProjetoInstance, field: 'justificativa', 'error')} required">
		<label for="justificativa"> <g:message
				code="termoAberturaProjeto.justificativa.label" default="Justificativa" />
		</label>

		<g:textArea name="justificativa" cols="40" rows="5" maxlength="1000"
			required="" value="${termoAberturaProjetoInstance?.justificativa}"
			style="width:400px; height:120px; " />
	</p>
	
	<p
		class="fieldcontain ${hasErrors(bean: termoAberturaProjetoInstance, field: 'produto', 'error')} required">
		<label for="produto"> <g:message
				code="termoAberturaProjeto.produto.label" default="Produto" />
		</label>

		<g:textArea name="produto" cols="40" rows="5" maxlength="1000"
			required="" value="${termoAberturaProjetoInstance?.produto}"
			style="width:400px; height:120px; " />
	</p>
	
	<p
		class="fieldcontain ${hasErrors(bean: termoAberturaProjetoInstance, field: 'restricao', 'error')} required">
		<label for="restricao"> <g:message
				code="termoAberturaProjeto.restricao.label" default="Restrição" />
		</label>

		<g:textArea name="restricao" cols="40" rows="5" maxlength="1000" class="${hasErrors(bean: termoAberturaProjetoInstance, field: 'restricao', 'error')}"
			required="true" value="${termoAberturaProjetoInstance?.restricao}"
			style="width:400px; height:120px; " />
	</p>
	
	

</fieldset>

