<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Real Estate Analytics</title>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link rel="stylesheet" href="${resource(dir: 'fancybox', file: 'jquery.fancybox-v=2.1.5.css')}" type="text/css" media="screen">


<!-- CSS (necessary for Bootstrap's CSS ) -->
	
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'style.css')}">	
	
	<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,600,300,200&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="navbar navbar-fixed-top" data-activeslide="1">
		<div class="container">
			<!-- .navbar-toggle is used as the toggle for collapsed navbar content -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
				<div class="nav-collapse collapse navbar-responsive-collapse">
				<ul class="nav row">
					<li data-slide="1" class="col-12 col-sm-2"><a id="menu-link-1" href="#slide-1" title="Next Section"><span class="icon icon-home"></span> <span class="text">HOME</span></a></li>
					<li data-slide="2" class="col-12 col-sm-2"><a id="menu-link-2" href="#slide-2" title="Next Section"><span class="icon icon-user"></span> <span class="text">ABOUT US</span></a></li>
					<li data-slide="3" class="col-12 col-sm-2"><a id="menu-link-3" href="#slide-3" title="Next Section"><span class="icon icon-briefcase"></span> <span class="text">PORTFOLIO</span></a></li>
					<li data-slide="4" class="col-12 col-sm-2"><a id="menu-link-4" href="#slide-4" title="Next Section"><span class="icon icon-gears"></span> <span class="text">PROCESS</span></a></li>
					<li data-slide="5" class="col-12 col-sm-2"><a id="menu-link-5" href="#slide-5" title="Next Section"><span class="icon icon-heart"></span> <span class="text">CLIENTS</span></a></li>
					<li data-slide="6" class="col-12 col-sm-2"><a id="menu-link-6" href="#slide-6" title="Next Section"><span class="icon icon-envelope"></span> <span class="text">CONTACT</span></a></li>
				</ul>
				<div class="row">
					<div class="col-sm-2 active-menu"></div>
				</div>
			</div><!-- /.nav-collapse -->
		</div><!-- /.container -->
	</div><!-- /.navbar -->
	
	<!-- === MAIN Background === -->
	<g:javascript src="mapUtil.js"></g:javascript>
	<div class="slide story" id="slide-1" data-slide="1">
		<div>
			<h1 id="address" hidden="true">${flash.address}</h1>
		</div>	
		<div class="container">
			<table class="table table-bordered" >
			  	 <tr>
			      <!--Body content-->
				  	<td>Address</td> 
				  	<td>City</td>
				  	<td>Zip</td>
				  	<td>Bathrooms </td>
					<td>Bedrooms </td>
					<td>Finished Sq.Ft Area </td>
					<td>Lot Sq.Ft Area </td>
				  	<td>Estimated Price</td>
				</tr>
			  <tr>
			      <!--Body content-->
				  	<td> ${flash.address}</td> 
				  	<td> ${flash.city}</td>
				  	<td> ${flash.zip }</td>
				  	<td> ${flash.bathroom} </td>
					<td> ${flash.bedroom} </td>
					<td> ${flash.fArea} </td>
					<td> ${flash.lArea} </td>
				  	<td> ${flash.zestAmt}</td>
				</tr>
			</table>	
			<button type="button" class="btn btn-primary" onclick="codeAddress()" data-loading-text="LOading...">View Map!</button>			
			<div id="map-canvas" style="width: 300px; height: 300px" >
			</div>
			
		</div><!-- /container -->
	</div>
</body>


	<script src="js/html5shiv.js"></script>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="fancybox/jquery.fancybox.pack-v=2.1.5.js"></script>
	<script src="js/script.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<!-- fancybox init -->
	<script>
	$(document).ready(function(e) {
		var lis = $('.nav > li');
		menu_focus( lis[0], 1 );
		
		$(".fancybox").fancybox({
			padding: 10,
			helpers: {
				overlay: {
					locked: false
				}
			}
		});
	
	});
	</script>

</html>
