

<%@ page import="titanio.Usuario" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'usuario.label', default: 'Usuario')}" />
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


				
					
				<g:if test="${usuarioInstance?.id}">
				<p>
					<label id="id-label" class="label"><g:message code="usuario.id.label" default="Id" /></label>
					
						<span class="property-value" aria-labelledby="id-label"><g:fieldValue bean="${usuarioInstance}" field="id"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.username}">
				<p>
					<label id="username-label" class="label"><g:message code="usuario.username.label" default="Username" /></label>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioInstance}" field="username"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.password}">
				<p>
					<label id="password-label" class="label"><g:message code="usuario.password.label" default="Password" /></label>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioInstance}" field="password"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.accountExpired}">
				<p>
					<label id="accountExpired-label" class="label"><g:message code="usuario.accountExpired.label" default="Account Expired" /></label>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${usuarioInstance?.accountExpired}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.accountLocked}">
				<p>
					<label id="accountLocked-label" class="label"><g:message code="usuario.accountLocked.label" default="Account Locked" /></label>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${usuarioInstance?.accountLocked}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.celular}">
				<p>
					<label id="celular-label" class="label"><g:message code="usuario.celular.label" default="Celular" /></label>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${usuarioInstance}" field="celular"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.dataNascimento}">
				<p>
					<label id="dataNascimento-label" class="label"><g:message code="usuario.dataNascimento.label" default="Data Nascimento" /></label>
					
						<span class="property-value" aria-labelledby="dataNascimento-label"><g:formatDate date="${usuarioInstance?.dataNascimento}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.dddCelular}">
				<p>
					<label id="dddCelular-label" class="label"><g:message code="usuario.dddCelular.label" default="Ddd Celular" /></label>
					
						<span class="property-value" aria-labelledby="dddCelular-label"><g:fieldValue bean="${usuarioInstance}" field="dddCelular"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.dddTelefone}">
				<p>
					<label id="dddTelefone-label" class="label"><g:message code="usuario.dddTelefone.label" default="Ddd Telefone" /></label>
					
						<span class="property-value" aria-labelledby="dddTelefone-label"><g:fieldValue bean="${usuarioInstance}" field="dddTelefone"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.enabled}">
				<p>
					<label id="enabled-label" class="label"><g:message code="usuario.enabled.label" default="Enabled" /></label>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioInstance?.enabled}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.nome}">
				<p>
					<label id="nome-label" class="label"><g:message code="usuario.nome.label" default="Nome" /></label>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${usuarioInstance}" field="nome"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.passwordExpired}">
				<p>
					<label id="passwordExpired-label" class="label"><g:message code="usuario.passwordExpired.label" default="Password Expired" /></label>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" /></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.projetos}">
				<p>
					<label id="projetos-label" class="label"><g:message code="usuario.projetos.label" default="Projetos" /></label>
					
						<g:each in="${usuarioInstance.projetos}" var="p">
						<span class="property-value" aria-labelledby="projetos-label"><g:link controller="projeto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.sexo}">
				<p>
					<label id="sexo-label" class="label"><g:message code="usuario.sexo.label" default="Sexo" /></label>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${usuarioInstance}" field="sexo"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.sobrenome}">
				<p>
					<label id="sobrenome-label" class="label"><g:message code="usuario.sobrenome.label" default="Sobrenome" /></label>
					
						<span class="property-value" aria-labelledby="sobrenome-label"><g:fieldValue bean="${usuarioInstance}" field="sobrenome"/></span>
					
				</p>
				</g:if>
			
				<g:if test="${usuarioInstance?.telefone}">
				<p>
					<label id="telefone-label" class="label"><g:message code="usuario.telefone.label" default="Telefone" /></label>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${usuarioInstance}" field="telefone"/></span>
					
				</p>
				</g:if>
			


				<br />
				<fieldset class="grey-bg no-margin">
					<p class="input-with-button">

						<g:hiddenField name="id" value="${usuarioInstance?.id}" />
						<g:link class="submitButton" action="edit"
							id="${usuarioInstance?.id}">
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
