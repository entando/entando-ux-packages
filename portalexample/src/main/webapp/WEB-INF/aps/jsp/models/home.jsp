<%@ taglib prefix="wp" uri="/aps-core" %>
<!DOCTYPE html>
<html lang="<wp:info key="currentLang" />">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<title>
			<wp:currentPage param="title" /> - Entando
		</title>
		<link rel="icon" href="<wp:info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />

		<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
			<script src="<wp:resourceURL />static/js/entando-misc-html5-essentials/html5shiv.js"></script>
		<![endif]-->

		<%--
			FIXME!!!
			Do not never include jquery.js here.
			Do not never include bootstrap.js here
			Try to use the inclusions coming from the navigation_menu bundle
		--%>

		<jsp:include page="inc/lesscss-active/lesscss.jsp" />
		<jsp:include page="inc/models-common-utils.jsp" />

	</head>
	<body>

	<%--
		FIXME!!!
		Try replacing this with a real showlet, and see what happens.
	--%>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#"><img src="<wp:imgURL />entando-logo.png" alt="Entando - Access. Build. Connect." /></a>
				<div class="nav-collapse">
					<ul class="nav">
						<li><a href="http://www.entando.com">Home of Entando</a></li>
						<li><a href="http://github.com/entando/">Source code and online docs at GitHub</a></li>
						<li><a href="http://sourceforge.net/projects/japs">Entando at SourceForge</a></li>
					</ul>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">

	<!-- START WELCOME -->
	<h1>It Worked!<br /> <strong>Entando</strong> is installed on this host.</h1>
	<h2 class="lead">Version <wp:info key="systemParam" paramName="version" /></h2>

	<p>
		If you can see this page, then the people who own this host have just installed <strong>Entando</strong> successfully.<br/>
		They now have to replace this placeholder page or just its contents.
	</p>

	<p>
		Use the following to enter the <a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/login.action">Administration Area</a>:
	</p>

	<ul>
		<li>Username: <strong>admin</strong></li>
		<li>Password: <strong>adminadmin</strong></li>
	</ul>

	<p>
	Have a good time with <strong>Entando</strong>!<br />
	- The Team -
	</p>

	<!-- END WELCOME -->

	</div>

  </body>
</html>
