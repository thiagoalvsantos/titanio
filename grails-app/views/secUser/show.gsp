

<%@ page import="titanio.SecUser" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'secUser.label', default: 'SecUser')}" />
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


				
					
				<g:if test="${secUserInstance?.id}">
				<p>
					<label id="id-label" class="label"><g:message code="secUser.id.label" default="Id" /></label>
					
						<span class="property-value" aria-labelledby="id-label"><g:fieldValue bean="${secUserInstance}" field="id"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.username}">
				<p>
					<label id="username-label" class="label"><g:message code="secUser.username.label" default="Username" /></label>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${secUserInstance}" field="username"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.password}">
				<p>
					<label id="password-label" class="label"><g:message code="secUser.password.label" default="Password" /></label>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${secUserInstance}" field="password"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.accountExpired}">
				<p>
					<label id="accountExpired-label" class="label"><g:message code="secUser.accountExpired.label" default="Account Expired" /></label>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${secUserInstance?.accountExpired}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.accountLocked}">
				<p>
					<label id="accountLocked-label" class="label"><g:message code="secUser.accountLocked.label" default="Account Locked" /></label>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${secUserInstance?.accountLocked}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.celular}">
				<p>
					<label id="celular-label" class="label"><g:message code="secUser.celular.label" default="Celular" /></label>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${secUserInstance}" field="celular"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.dataNascimento}">
				<p>
					<label id="dataNascimento-label" class="label"><g:message code="secUser.dataNascimento.label" default="Data Nascimento" /></label>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${secUserInstance?.dataNascimento}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.dddCelular}">
				<p>
					<label id="dddCelular-label" class="label"><g:message code="secUser.dddCelular.label" default="Ddd Celular" /></label>
					
						<span class="property-value" aria-labelledby="dddCelular-label"><g:fieldValue bean="${secUserInstance}" field="dddCelular"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.dddTelefone}">
				<p>
					<label id="dddTelefone-label" class="label"><g:message code="secUser.dddTelefone.label" default="Ddd Telefone" /></label>
					
						<span class="property-value" aria-labelledby="dddTelefone-label"><g:fieldValue bean="${secUserInstance}" field="dddTelefone"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.enabled}">
				<p>
					<label id="enabled-label" class="label"><g:message code="secUser.enabled.label" default="Enabled" /></label>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${secUserInstance?.enabled}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.nome}">
				<p>
					<label id="nome-label" class="label"><g:message code="secUser.nome.label" default="Nome" /></label>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${secUserInstance}" field="nome"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.passwordExpired}">
				<p>
					<label id="passwordExpired-label" class="label"><g:message code="secUser.passwordExpired.label" default="Password Expired" /></label>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${secUserInstance?.passwordExpired}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.projetos}">
				<p>
					<label id="projetos-label" class="label"><g:message code="secUser.projetos.label" default="Projetos" /></label>
					
						<g:each in="${secUserInstance.projetos}" var="p">
						<span class="property-value" aria-labelledby="projetos-label"><g:link controller="projeto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.sexo}">
				<p>
					<label id="sexo-label" class="label"><g:message code="secUser.sexo.label" default="Sexo" /></label>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${secUserInstance}" field="sexo"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.sobrenome}">
				<p>
					<label id="sobrenome-label" class="label"><g:message code="secUser.sobrenome.label" default="Sobrenome" /></label>
					
						<span class="property-value" aria-labelledby="sobrenome-label"><g:fieldValue bean="${secUserInstance}" field="sobrenome"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${secUserInstance?.telefone}">
				<p>
					<label id="telefone-label" class="label"><g:message code="secUser.telefone.label" default="Telefone" /></label>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${secUserInstance}" field="telefone"/></span>
					
				</p>
				</g:if>
			


				<br />
				<fieldset class="grey-bg no-margin">
					<p class="input-with-button">

						<g:hiddenField name="id" value="${secUserInstance?.id}" />
						<g:link class="submitButton" action="edit"
							id="${secUserInstance?.id}">
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
