<cfoutput>
	<!DOCTYPE html>
	<html lang="en">
		<head>
			<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"> 
			<meta charset="utf-8">
			<title>
				Contacts
			</title>
			#styleSheetLinkTag(source="bootstrap")#
			<!--[if lt IE 9]>
				#javaScriptIncludeTag("html5")#
			<![endif]-->
			#javaScriptIncludeTag("jquery")#
			<style type="text/css">
				/* Override some defaults */
				html, body {
					background-color: ##eee;
				}
				body {
					padding-top: 40px; /* 40px to make the container go all the way to the bottom of the topbar */
				}
				.container > footer p {
					text-align: center; /* center align it with the container */
				}
				.container {
					width: 820px; /* downsize our container to make the content feel a bit tighter and more cohesive. NOTE: this removes two full columns from the grid, meaning you only go to 14 columns and not 16. */
				}

				/* The white background content wrapper */
				.content {
					background-color: ##fff;
					padding: 20px;
					margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */
					-webkit-border-radius: 0 0 6px 6px;
						 -moz-border-radius: 0 0 6px 6px;
									border-radius: 0 0 6px 6px;
					-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
						 -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
									box-shadow: 0 1px 2px rgba(0,0,0,.15);
				}

				/* Page header tweaks */
				.page-header {
					background-color: ##f5f5f5;
					padding: 20px 20px 10px;
					margin: -20px -20px 20px;
				}

				/* Styles you shouldn't keep as they are for displaying this base example only */
				.content .span10,
				.content .span4 {
					min-height: 500px;
				}
				/* Give a quick and non-cross-browser friendly divider */
				.content .span4 {
					margin-left: 0;
					padding-left: 19px;
					border-left: 1px solid ##eee;
				}

				.topbar .btn {
					border: 0;
				}
			</style>
		</head>
		<body>
			<div class="topbar">
				<div class="fill">
					<div class="container">
						<a class="brand" href="##">Contacts</a>
						<ul class="nav">
							<li class="active"><a href="##">Home</a></li>
							<li><a href="##about">About</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="content">
					#includeContent()#
				</div>
			</div> <!-- /container -->	
		</body>
	</html>
</cfoutput>