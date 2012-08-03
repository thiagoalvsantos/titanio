<%@ page import="titanio.SecUser" %>



<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="secUser.username.label" default="Username" />		
	</label>
	<g:field type="email" name="username" required="" value="${secUserInstance?.username}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="secUser.password.label" default="Password" />		
	</label>
	<g:textField name="password" required="" value="${secUserInstance?.password}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="secUser.accountExpired.label" default="Account Expired" />		
	</label>
	<g:checkBox name="accountExpired" value="${secUserInstance?.accountExpired}" />
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="secUser.accountLocked.label" default="Account Locked" />		
	</label>
	<g:checkBox name="accountLocked" value="${secUserInstance?.accountLocked}" />
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="secUser.celular.label" default="Celular" />		
	</label>
	<g:textField name="celular" value="${secUserInstance?.celular}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="secUser.dataNascimento.label" default="Data Nascimento" />		
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${secUserInstance?.dataNascimento}"  />
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'dddCelular', 'error')} ">
	<label for="dddCelular">
		<g:message code="secUser.dddCelular.label" default="Ddd Celular" />		
	</label>
	<g:textField name="dddCelular" value="${secUserInstance?.dddCelular}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'dddTelefone', 'error')} ">
	<label for="dddTelefone">
		<g:message code="secUser.dddTelefone.label" default="Ddd Telefone" />		
	</label>
	<g:textField name="dddTelefone" value="${secUserInstance?.dddTelefone}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="secUser.enabled.label" default="Enabled" />		
	</label>
	<g:checkBox name="enabled" value="${secUserInstance?.enabled}" />
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="secUser.nome.label" default="Nome" />		
	</label>
	<g:textField name="nome" value="${secUserInstance?.nome}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="secUser.passwordExpired.label" default="Password Expired" />		
	</label>
	<g:checkBox name="passwordExpired" value="${secUserInstance?.passwordExpired}" />
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'projetos', 'error')} ">
	<label for="projetos">
		<g:message code="secUser.projetos.label" default="Projetos" />		
	</label>
	<g:select name="projetos" from="${titanio.Projeto.list()}" multiple="multiple" optionKey="id" size="5" value="${secUserInstance?.projetos*.id}" class="many-to-many"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="secUser.sexo.label" default="Sexo" />		
	</label>
	<g:field type="number" name="sexo" required="" value="${secUserInstance.sexo}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'sobrenome', 'error')} ">
	<label for="sobrenome">
		<g:message code="secUser.sobrenome.label" default="Sobrenome" />		
	</label>
	<g:textField name="sobrenome" value="${secUserInstance?.sobrenome}"/>
</p>

<p class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="secUser.telefone.label" default="Telefone" />		
	</label>
	<g:textField name="telefone" value="${secUserInstance?.telefone}"/>
</p>

