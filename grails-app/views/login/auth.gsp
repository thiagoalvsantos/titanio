<html>
<head>
<meta name='layout' content='login' />
<title><g:message code="springSecurity.login.title" /></title>
<style type='text/css' media='screen'>
#login {
	margin: 15px 0px;
	padding: 0px;
	text-align: center;
}

#login .inner {
	width: 340px;
	padding-bottom: 6px;
	margin: 60px auto;
	text-align: left;
	border: 1px solid #aab;
	background-color: #f0f0fa;
	-moz-box-shadow: 2px 2px 2px #eee;
	-webkit-box-shadow: 2px 2px 2px #eee;
	-khtml-box-shadow: 2px 2px 2px #eee;
	box-shadow: 2px 2px 2px #eee;
}

#login .inner .fheader {
	padding: 18px 26px 14px 26px;
	background-color: #f7f7ff;
	margin: 0px 0 14px 0;
	color: #2e3741;
	font-size: 18px;
	font-weight: bold;
}

#login .inner .cssform p {
	clear: left;
	margin: 0;
	padding: 4px 0 3px 0;
	padding-left: 105px;
	margin-bottom: 20px;
	height: 1%;
}

#login .inner .cssform input[type='text'] {
	width: 120px;
}

#login .inner .cssform label {
	font-weight: bold;
	float: left;
	text-align: right;
	margin-left: -105px;
	width: 110px;
	padding-top: 3px;
	padding-right: 10px;
}

#login #remember_me_holder {
	padding-left: 120px;
}

#login #submit {
	margin-left: 15px;
}

#login #remember_me_holder label {
	float: none;
	margin-left: 0;
	text-align: left;
	width: 200px
}

#login .inner .login_message {
	padding: 6px 25px 20px 25px;
	color: #c33;
}

#login .inner .text_ {
	width: 120px;
}

#login .inner .chk {
	height: 12px;
}
</style>
</head>

<body>


	<!--
			IE7 compatibility: if you want to remove the <h1>, 
			add style="zoom:1" to the above .block-content div
			-->
	<h1>Titânio</h1>
	<div class="block-header">Login</div>

	<g:if test='${flash.message}'>
		<p class="message error no-margin">
			${flash.message}
		</p>
	</g:if>



	<form action='${postUrl}' method='POST' id='loginForm'
		class='form with-margin' autocomplete="on">

		<p class="inline-small-label">
			<label for="username"><span class="big"><g:message
						code="springSecurity.login.username.label" /></span></label> <input type="text"
				name="j_username" id="username" class="full-width" value="">
		</p>


		<p class="inline-small-label">
			<label for="password"><span class="big"><g:message
						code="springSecurity.login.password.label" /></span></label> <input
				type="password" name="j_password" id="password" class="full-width"
				value="">
		</p>

		<button type="submit" id="submit"  class="float-right">Login</button>

		<p class="input-height">
			<input type="checkbox" name="${rememberMeParameter}" id="remember_me"
				class="mini-switch"
				<g:if test='${hasCookie}'>checked='checked'</g:if> /> <label
				for="remember_me" class="inline"><g:message
					code="springSecurity.login.remember.me.label" /></label>
		</p>

	</form>

	<form class="form" id="password-recovery" method="post" action="">
		<fieldset class="grey-bg no-margin collapse">
			<legend>
				<a href="#">Lost password?</a>
			</legend>
			<p class="input-with-button">
				<label for="recovery-mail">Enter your e-mail address</label> <input
					type="text" name="recovery-mail" id="recovery-mail" value="">
				<button type="button">Send</button>
			</p>
		</fieldset>
	</form>

	<script type='text/javascript'>
	<!--
		(function() {
			document.forms['loginForm'].elements['j_username'].focus();
		})();
	// -->
	</script>
</body>
</html>
