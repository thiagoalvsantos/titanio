<%@ page import="titanio.Projeto" %>



<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="projeto.nome.label" default="Nome" />		
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${projetoInstance?.nome}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="projeto.descricao.label" default="Descricao" />		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="500" required="" value="${projetoInstance?.descricao}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="projeto.dataInicio.label" default="Data Inicio" />		
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${projetoInstance?.dataInicio}"  />
</p>

<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'ativo', 'error')} ">
	<label for="ativo">
		<g:message code="projeto.ativo.label" default="Ativo" />		
	</label>
	<g:checkBox name="ativo" value="${projetoInstance?.ativo}" />
</p>

