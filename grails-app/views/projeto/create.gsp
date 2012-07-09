<%@ page import="titanio.Projeto" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'projeto.label', default: 'Projeto')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>

<body>


	<section class="grid_12">
		<div class="block-border">
			<g:form action="save" class="block-content form"
				>
				<h1>
					<g:message code="default.create.label" args="[entityName]" />
				</h1>

				<div class="block-controls">

					<ul class="controls-tabs">
						<li><a class="home" href="${createLink(uri: '/')}"
							title="${message(code:'default.home.label')}"><g:img
									file="icones/home.png" width="24" height="24" /></a></li>
						<li><g:link class="list" action="list" title="Lista">
								<g:img file="icones/database.png" width="24" height="24" />
							</g:link></li>
					</ul>

				</div>

				<g:if test="${flash.message}">
					<ul class="message warning no-margin">
						<li>${flash.message}</li>
						<li class="close-bt"></li>
					</ul>
				</g:if>

				<g:hasErrors bean="${projetoInstance}">
					<ul class="message error no-margin">
						<g:eachError bean="${projetoInstance}" var="error">
							<li
								<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
									error="${error}" /></li>
						</g:eachError>
					</ul>
				</g:hasErrors>

				<g:render template="form" />
				<br />
				<fieldset class="grey-bg no-margin">
					<p class="input-with-button">
						<g:submitButton name="create" class="submitButton"
							value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</p>
				</fieldset>

			</g:form>
		</div>
	</section>
</body>
</html>
