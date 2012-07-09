

<%@ page import="titanio.Projeto" %>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'projeto.label', default: 'Projeto')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

	<g:if test="${flash.message}">
		<div class="message">${flash.message}</div>
	</g:if>
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

	<section class="grid_12">
		<div class="block-border">
			<form class="block-content form" id="table_form" method="post"
				action="">

				<table class="table sortable no-margin" cellspacing="0" width="100%">
					<thead>
						<tr>
							
						<th  scope="col"  title="${message(code: 'projeto.nome.label', default: 'Nome')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="projeto.nome.label" default="Nome" />
						</th>
					
						<th  scope="col"  title="${message(code: 'projeto.descricao.label', default: 'Descricao')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="projeto.descricao.label" default="Descricao" />
						</th>
					
						<th  scope="col"  title="${message(code: 'projeto.ativo.label', default: 'Ativo')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="projeto.ativo.label" default="Ativo" />
						</th>
					
						<th  scope="col"  title="${message(code: 'projeto.dataInicio.label', default: 'Data Inicio')}">
							<span class="column-sort">
								<a href="#" title="Sort up" class="sort-up"></a>
								<a href="#" title="Sort down" class="sort-down"></a>
							</span><g:message code="projeto.dataInicio.label" default="Data Inicio" />
						</th>
					
						</tr>
					</thead>
					<tbody>

						<g:each in="${projetoInstanceList}" status="i"
							var="projetoInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								
						<td><g:link action="show" id="${projetoInstance.id}">${fieldValue(bean: projetoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: projetoInstance, field: "descricao")}</td>
					
						<td><g:formatBoolean boolean="${projetoInstance.ativo}" /></td>
					
						<td><g:formatDate date="${projetoInstance.dataInicio}" /></td>
					
							</tr>
						</g:each>
					</tbody>
				</table>
			</form>
		</div>
	</section>


</body>

</html>
