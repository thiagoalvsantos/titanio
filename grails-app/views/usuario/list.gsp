

<%@ page import="titanio.Usuario" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'usuario.label', default: 'Usuario')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>


	<section class="grid_12">
		<div class="block-border">
			<div class="block-content no-padding">
				<h1>
					<g:message code="default.list.label" args="[entityName]" />
				</h1>
				<div class="block-controls">
					<ul class="controls-buttons">
						<li><a class="home" href="${createLink(uri: '/')}"><g:message
									code="default.home.label" /></a></li>
						<li><g:link class="create" action="create">
								<g:message code="default.new.label" args="[entityName]" />
							</g:link></li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<g:if test="${flash.message}">
		<div class="message">${flash.message}</div>
	</g:if>

	<section class="grid_12">
		<div class="block-border">
			<form class="block-content form" id="table_form" method="post"
				action="">

				<table class="table sortable no-margin" cellspacing="0" width="100%">
					<thead>
						<tr>
							
						<th  scope="col"  title="${message(code: 'usuario.id.label', default: 'Id')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="usuario.id.label" default="Id" />
						</th>
					
						<th  scope="col"  title="${message(code: 'usuario.username.label', default: 'Username')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="usuario.username.label" default="Username" />
						</th>
					
						<th  scope="col"  title="${message(code: 'usuario.password.label', default: 'Password')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="usuario.password.label" default="Password" />
						</th>
					
						<th  scope="col"  title="${message(code: 'usuario.accountExpired.label', default: 'Account Expired')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="usuario.accountExpired.label" default="Account Expired" />
						</th>
					
						<th  scope="col"  title="${message(code: 'usuario.accountLocked.label', default: 'Account Locked')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="usuario.accountLocked.label" default="Account Locked" />
						</th>
					
						<th  scope="col"  title="${message(code: 'usuario.celular.label', default: 'Celular')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="usuario.celular.label" default="Celular" />
						</th>
					
						</tr>
					</thead>
					<tbody>

						<g:each in="${usuarioInstanceList}" status="i"
							var="usuarioInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								
						<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "id")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "password")}</td>
					
						<td><g:formatBoolean boolean="${usuarioInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${usuarioInstance.accountLocked}" /></td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "celular")}</td>
					
							</tr>
						</g:each>
					</tbody>
				</table>
			</form>
		</div>
	</section>


</body>

</html>
