

<%@ page import="titanio.Projeto"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'projeto.label', default: 'Projeto')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>


	<section class="grid_12">
		<div class="block-content no-padding">
			<h1>
				<g:message code="default.list.label" args="[entityName]" />
			</h1>
			<div class="block-controls">
				<ul class="controls-tabs">
					<li><a class="home" href="${createLink(uri: '/')}"><g:img file="icones/home.png"
								width="24" height="24" /></a></li>
					<li><g:link class="create" action="create">
							<g:img file="icones/document.png" width="24" height="24" />

						</g:link></li>
				</ul>
			</div>
		</div>
	</section>

	<g:if test="${flash.message}">
		<div class="message">
			${flash.message}
		</div>
	</g:if>

	<section class="grid_12">
		<form class="block-content form" id="table_form" method="post" action="">

			<table class="table sortable no-margin" cellspacing="0" width="100%">
				<thead>
					<tr>

						<th scope="col" title="${message(code: 'projeto.id.label', default: 'Id')}"><span
							class="column-sort"> <a href="#" title="Sort up" class="sort-up"></a> <a href="#"
								title="Sort down" class="sort-down"></a>
						</span> <g:message code="projeto.id.label" default="Id" /></th>

						<th scope="col" title="${message(code: 'projeto.nome.label', default: 'Nome')}"><span
							class="column-sort"> <a href="#" title="Sort up" class="sort-up"></a> <a href="#"
								title="Sort down" class="sort-down"></a>
						</span> <g:message code="projeto.nome.label" default="Nome" /></th>

						<th scope="col" title="${message(code: 'projeto.descricao.label', default: 'Descricao')}">
							<span class="column-sort"> <a href="#" title="Sort up" class="sort-up"></a> <a
								href="#" title="Sort down" class="sort-down"></a>
						</span> <g:message code="projeto.descricao.label" default="Descricao" />
						</th>

						<th scope="col" title="${message(code: 'projeto.dataInicio.label', default: 'Data Inicio')}">
							<span class="column-sort"> <a href="#" title="Sort up" class="sort-up"></a> <a
								href="#" title="Sort down" class="sort-down"></a>
						</span> <g:message code="projeto.dataInicio.label" default="Data Inicio" />
						</th>

						<th scope="col" title="${message(code: 'projeto.ativo.label', default: 'Ativo')}"><span
							class="column-sort"> <a href="#" title="Sort up" class="sort-up"></a> <a href="#"
								title="Sort down" class="sort-down"></a>
						</span> <g:message code="projeto.ativo.label" default="Ativo" /></th>

					</tr>
				</thead>
				<tbody>

					<g:each in="${projetoInstanceList}" status="i" var="projetoInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">


							<td><g:link action="show" id="${projetoInstance.id}">
									${fieldValue(bean: projetoInstance, field: "id")}
								</g:link></td>

							<td>
								${fieldValue(bean: projetoInstance, field: "nome")}
							</td>

							<td>
								${fieldValue(bean: projetoInstance, field: "descricao")}
							</td>

							<td><g:formatDate date="${projetoInstance.dataInicio}" /></td>

							<td><g:formatBoolean boolean="${projetoInstance.ativo}" /></td>

						</tr>
					</g:each>
				</tbody>
			</table>
		</form>
	</section>


</body>

</html>
