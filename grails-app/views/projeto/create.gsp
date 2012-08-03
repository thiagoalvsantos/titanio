<%@ page import="titanio.Projeto" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'projeto.label', default: 'Projeto')}" />
<title><g:message code="projeto.novo.label" default="Novo Projeto" /> </title>
</head>

<body>

	<section class="grid_12">
			<div class="block-content no-padding">
				<h1>
					<g:message code="projeto.novo.label" default="Novo Projeto" />
				</h1>
				<div class="block-controls">

					<ul class="controls-tabs">
						
						<li><g:link class="list" action="list" title="Lista">
							<g:img file="icones/database.png" width="24" height="24" />
						</g:link></li>
					</ul>

				</div>

			</div>
	</section>

	<section class="grid_12">
			<g:form action="save" class="block-content form"
				>


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
	</section>
</body>
</html>
