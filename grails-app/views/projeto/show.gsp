

<%@ page import="titanio.Projeto" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'projeto.label', default: 'Projeto')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>

	<section class="grid_12">
		<div class="block-border">
			<div class="block-content no-padding">
				<h1>
					<g:message code="default.show.label" args="[entityName]" />
				</h1>
				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a class="home" href="${createLink(uri: '/')}"><g:message
									code="default.home.label" /></a></li>
						<li><g:link class="list" action="list">
								<g:message code="default.list.label" args="[entityName]" />
							</g:link></li>
						<li><g:link class="create" action="create">
								<g:message code="default.new.label" args="[entityName]" />
							</g:link></li>
					</ul>
				</div>
			</div>
		</div>
	</section>


	<section class="grid_12">
		<div class="block-border">
			<g:form class="block-content form">

				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>


				
					
				<g:if test="${projetoInstance?.id}">
				<p>
					<label id="id-label" class="label"><g:message code="projeto.id.label" default="Id" /></label>
					
						<span class="property-value" aria-labelledby="id-label"><g:fieldValue bean="${projetoInstance}" field="id"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${projetoInstance?.nome}">
				<p>
					<label id="nome-label" class="label"><g:message code="projeto.nome.label" default="Nome" /></label>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${projetoInstance}" field="nome"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${projetoInstance?.descricao}">
				<p>
					<label id="descricao-label" class="label"><g:message code="projeto.descricao.label" default="Descricao" /></label>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${projetoInstance}" field="descricao"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${projetoInstance?.dataInicio}">
				<p>
					<label id="dataInicio-label" class="label"><g:message code="projeto.dataInicio.label" default="Data Inicio" /></label>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate date="${projetoInstance?.dataInicio}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${projetoInstance?.ativo}">
				<p>
					<label id="ativo-label" class="label"><g:message code="projeto.ativo.label" default="Ativo" /></label>
					
						<span class="property-value" aria-labelledby="ativo-label"><g:formatBoolean boolean="${projetoInstance?.ativo}" /></span>
					
				</p>
				</g:if>
			


				<br />
				<fieldset class="grey-bg no-margin">
					<p class="input-with-button">

						<g:hiddenField name="id" value="${projetoInstance?.id}" />
						<g:link class="submitButton" action="edit"
							id="${projetoInstance?.id}">
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<g:actionSubmit class="submitButton" action="delete"
							value="${message(code: 'default.button.delete.label', default: 'Delete')}"
							onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</p>
				</fieldset>

			</g:form>
		</div>
	</section>
</body>
</html>
