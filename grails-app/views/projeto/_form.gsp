<%@ page import="titanio.Projeto" %>



<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="projeto.nome.label" default="Nome" />		
	</label>
	<g:textField name="nome" required="" value="${projetoInstance?.nome}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="projeto.descricao.label" default="Descricao" />		
	</label>
	<g:textField name="descricao" required="" value="${projetoInstance?.descricao}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'ativo', 'error')} ">
	<label for="ativo">
		<g:message code="projeto.ativo.label" default="Ativo" />		
	</label>
	<g:checkBox name="ativo" value="${projetoInstance?.ativo}" />
</p>

<p class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="projeto.dataInicio.label" default="Data Inicio" />		
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${projetoInstance?.dataInicio}"  />
</p>

