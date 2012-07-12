<%@ page import="titanio.Projeto"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">

<title>Resumo</title>
</head>

<body>


	<div class="grid_4">



		<section class="with-margin">

			<div class="block-border">

				<div class="block-content form">

					<h1>Projetos</h1>


					<ul class="simple-list with-icon icon-info">

						<g:each in="${projetoInstanceList}" status="i"
							var="projetoInstance">

							<li><g:link controller="projeto" action="show" id="${projetoInstance.id}">
									${fieldValue(bean: projetoInstance, field: "nome")} - ${fieldValue(bean: projetoInstance, field: "descricao")}
								</g:link></li>

						</g:each>
					</ul>



				</div>



				<div class="block-content no-title dark-bg">

					<p class="mini-infos">

						Deseja ver mais registros?
						<g:link controller="projeto">Clique aqui.</g:link>
						</a>

					</p>

				</div>

			</div>

		</section>







	</div>

</body>
</html>