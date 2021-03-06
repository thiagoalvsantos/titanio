<!doctype html>
<!--[if lt IE 8 ]><html lang="en" class="no-js ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="en" class="no-js ie"><![endif]-->
<!--[if (gt IE 8)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Titanio" /></title>
<meta name="description" content="Titanio Agile">
<meta name="author" content="Thiago Alves">

<!-- Global stylesheets -->
<link href="${resource(dir: 'css', file: 'reset.css')}" rel="stylesheet"
	type="text/css">
<link href="${resource(dir: 'css', file: 'common.css')}"
	rel="stylesheet" type="text/css">
<link href="${resource(dir: 'css', file: 'form.css')}" rel="stylesheet"
	type="text/css">
<link href="${resource(dir: 'css', file: 'standard.css')}"
	rel="stylesheet" type="text/css">
<link href="${resource(dir: 'css', file: 'special-pages.css')}"
	rel="stylesheet" type="text/css">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${resource(dir: '', file: 'favicon.ico')}">
<link rel="icon" type="image/png"
	href="${resource(dir: '', file: 'favicon-large.png')}">

<!-- Modernizr for support detection, all javascript libs are moved right above </body> for better performance -->
<g:javascript src="libs/modernizr.custom.min.js" />
</head>

<!-- the 'special-page' class is only an identifier for scripts -->
<body class="special-page login-bg dark">

	<section id="login-block">
		<div class="block-border">
			<div class="block-content">
				<g:layoutBody />
			</div>
		</div>

	</section>

	<!--
	
	Updated as v1.5:
	Libs are moved here to improve performance
	
	-->

	<g:javascript library="application" />
	<r:layoutResources />

	<!-- Generic libs -->
	<g:javascript src="libs/jquery-1.6.3.min.js" />
	<!-- remove if you do not need older browsers detection -->
	<g:javascript src="old-browsers.js" />

	<!-- Template libs -->
	<g:javascript src="common.js" />
	<g:javascript src="standard.js" />
	<!--[if lte IE 8]><g:javascript src="standard.ie.js"/></script><![endif]-->
	<g:javascript src="jquery.tip.js" />


	<!-- Template libs -->
	<script src="js/common.js"></script>
	<script src="js/standard.js"></script>
	<!--[if lte IE 8]><script src="js/standard.ie.js"></script><![endif]-->
	<script src="js/jquery.tip.js"></script>
	<r:layoutResources />
	<!-- example login script -->
	<script>
		$(document)
				.ready(
						function() {
							// We'll catch form submission to do it in AJAX, but this works also with JS disabled
							$('#login-form')
									.submit(
											function(event) {
												// Stop full page load
												event.preventDefault();

												// Check fields
												var login = $('#login').val();
												var pass = $('#pass').val();

												if (!login || login.length == 0) {
													$('#login-block')
															.removeBlockMessages()
															.blockMessage(
																	'Please enter your user name',
																	{
																		type : 'warning'
																	});
												} else if (!pass
														|| pass.length == 0) {
													$('#login-block')
															.removeBlockMessages()
															.blockMessage(
																	'Please enter your password',
																	{
																		type : 'warning'
																	});
												} else {
													var submitBt = $(this)
															.find(
																	'button[type=submit]');
													submitBt.disableBt();

													// Target url
													var target = $(this).attr(
															'action');
													if (!target || target == '') {
														// Page url without hash
														target = document.location.href
																.match(/^([^#]+)/)[1];
													}

													// Request
													var data = {
														a : $('#a').val(),
														login : login,
														pass : pass,
														'keep-logged' : $(
																'#keep-logged')
																.attr('checked') ? 1
																: 0
													}, redirect = $('#redirect'), sendTimer = new Date()
															.getTime();

													if (redirect.length > 0) {
														data.redirect = redirect
																.val();
													}

													// Send
													$
															.ajax({
																url : target,
																dataType : 'json',
																type : 'POST',
																data : data,
																success : function(
																		data,
																		textStatus,
																		XMLHttpRequest) {
																	if (data.valid) {
																		// Small timer to allow the 'cheking login' message to show when server is too fast
																		var receiveTimer = new Date()
																				.getTime();
																		if (receiveTimer
																				- sendTimer < 500) {
																			setTimeout(
																					function() {
																						document.location.href = data.redirect;

																					},
																					500 - (receiveTimer - sendTimer));
																		} else {
																			document.location.href = data.redirect;
																		}
																	} else {
																		// Message
																		$(
																				'#login-block')
																				.removeBlockMessages()
																				.blockMessage(
																						data.error
																								|| 'An unexpected error occured, please try again',
																						{
																							type : 'error'
																						});

																		submitBt
																				.enableBt();
																	}
																},
																error : function(
																		XMLHttpRequest,
																		textStatus,
																		errorThrown) {
																	// Message
																	$(
																			'#login-block')
																			.removeBlockMessages()
																			.blockMessage(
																					'Error while contacting server, please try again',
																					{
																						type : 'error'
																					});

																	submitBt
																			.enableBt();
																}
															});

													// Message
													$('#login-block')
															.removeBlockMessages()
															.blockMessage(
																	'Please wait, cheking login...',
																	{
																		type : 'loading'
																	});
												}
											});
						});
	</script>

</body>
</html>
