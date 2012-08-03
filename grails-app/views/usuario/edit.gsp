<%@ page import="titanio.Usuario" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'usuario.label', default: 'Usuario')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>

	<section class="grid_12">
		<div class="block-border">
			<div class="block-content no-padding">
				<h1>
					<g:message code="default.edit.label" args="[entityName]" />
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
			<g:form class="block-content form"
				>

				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>

				<g:hasErrors bean="${usuarioInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${usuarioInstance}" var="error">
							<li
								<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
									error="${error}" /></li>
						</g:eachError>
					</ul>
				</g:hasErrors>

				<g:hiddenField name="id" value="${usuarioInstance?.id}" />
				<g:hiddenField name="version" value="${usuarioInstance?.version}" />
				<g:render template="form" />

				<fieldset class="grey-bg no-margin">
					<p class="input-with-button">
						<g:actionSubmit class="submitButton" action="update"
							value="${message(code: 'default.button.update.label', default: 'Update')}" />
						<g:actionSubmit class="submitButton" action="delete"
							value="${message(code: 'default.button.delete.label', default: 'Delete')}"
							formnovalidate=""
							onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</p>
				</fieldset>
			</g:form>
		</div>
	</section>
</body>
</html>
