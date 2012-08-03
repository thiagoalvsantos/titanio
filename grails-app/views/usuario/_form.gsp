<%@ page import="titanio.Usuario" %>



<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />		
	</label>
	<g:field type="email" name="username" required="" value="${usuarioInstance?.username}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />		
	</label>
	<g:textField name="password" required="" value="${usuarioInstance?.password}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Account Expired" />		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioInstance?.accountExpired}" />
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Account Locked" />		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioInstance?.accountLocked}" />
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="usuario.celular.label" default="Celular" />		
	</label>
	<g:textField name="celular" value="${usuarioInstance?.celular}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="usuario.dataNascimento.label" default="Data Nascimento" />		
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${usuarioInstance?.dataNascimento}"  />
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dddCelular', 'error')} ">
	<label for="dddCelular">
		<g:message code="usuario.dddCelular.label" default="Ddd Celular" />		
	</label>
	<g:textField name="dddCelular" value="${usuarioInstance?.dddCelular}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'dddTelefone', 'error')} ">
	<label for="dddTelefone">
		<g:message code="usuario.dddTelefone.label" default="Ddd Telefone" />		
	</label>
	<g:textField name="dddTelefone" value="${usuarioInstance?.dddTelefone}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Enabled" />		
	</label>
	<g:checkBox name="enabled" value="${usuarioInstance?.enabled}" />
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="usuario.nome.label" default="Nome" />		
	</label>
	<g:textField name="nome" value="${usuarioInstance?.nome}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Password Expired" />		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioInstance?.passwordExpired}" />
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'projetos', 'error')} ">
	<label for="projetos">
		<g:message code="usuario.projetos.label" default="Projetos" />		
	</label>
	<g:select name="projetos" from="${titanio.Projeto.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.projetos*.id}" class="many-to-many"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="usuario.sexo.label" default="Sexo" />		
	</label>
	<g:field type="number" name="sexo" required="" value="${usuarioInstance.sexo}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'sobrenome', 'error')} ">
	<label for="sobrenome">
		<g:message code="usuario.sobrenome.label" default="Sobrenome" />		
	</label>
	<g:textField name="sobrenome" value="${usuarioInstance?.sobrenome}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="usuario.telefone.label" default="Telefone" />		
	</label>
	<g:textField name="telefone" value="${usuarioInstance?.telefone}"/>
</p>

