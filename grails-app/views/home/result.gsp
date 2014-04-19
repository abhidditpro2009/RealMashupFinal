<!DOCTYPE html>
<html lang="en">
<head>
<title>Real Estate Prediction Engine</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="author">

<g:javascript library="jquery" />

<!-- Le styles -->
<style type="text/css">
style type ="text /css">.gm-style .gm-style-mtc label,.gm-style .gm-style-mtc div {
	font-weight: 400
}
</style>
<style type="text/css">
.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div {
	font-size: 10px
}
</style>
<style type="text/css">
@media print {
	.gm-style .gmnoprint,.gmnoprint {
		display: none
	}
}

@media screen {
	.gm-style .gmnoscreen,.gmnoscreen {
		display: none
	}
}
</style>
<style type="text/css">
.gm-style {
	font-family: Roboto, Arial, sans-serif;
	font-size: 11px;
	font-weight: 400;
	text-decoration: none
}

/**** MODULE ****/
.bgc-fff {
    background-color: #fff!important;
}
.box-shad {
    -webkit-box-shadow: 1px 1px 0 rgba(0,0,0,.2);
    box-shadow: 1px 1px 0 rgba(0,0,0,.2);
}
.brdr {
    border: 1px solid #ededed;
}

/* Padding - Margins */
.pad-10 {
    padding: 10px!important;
}
.btm-mrg-20 {
    margin-bottom: 20px!important;
}

@media only screen and (max-width: 991px) {
    #property-listings .property-listing {
        padding: 5px!important;
    }
    #property-listings .property-listing a {
        margin: 0;
    }
    #property-listings .property-listing .media-body {
        padding: 10px;
    }
}


*, *:before, *:after {
    -moz-box-sizing: border-box;
}
*, *:before, *:after {
    -moz-box-sizing: border-box;
}
.propertyContent {
    padding: 9px;
}
.row {
    margin-left: -15px;
    margin-right: -15px;
}
* {
    margin: 0;
    padding: 0;
}

.row:before, .row:after {
    content: " ";
    display: table;
}

body {
    color: #464646;
    font-family: Proxima Nova Light,Helvetica,Arial;
    font-size: 15px;
}
body {
    color: #333333;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857;
}
html {
    font-size: 62.5%;
}
html {
    font-family: sans-serif;
}

.col-lg-12 {
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
}

.propertyContent {
    padding: 9px;
}

.propertyItem {
    background-color: #FFFFFF;
    box-shadow: 0 1px 3px #D4D4D4;
    margin-bottom: 30px;
}

col-lg-4 col-md-4 col-sm-4{
    min-height: 1px;
    padding-left: 15px;
    padding-right: 15px;
    position: relative;
    float: left
}

.rowText {
    padding-right: 33px;
    padding-top: 17px;
}

.col-lg-8 {
    width: 66.6667%;
    float: left;
    padding-left: 15px;
}

.row {
    margin-left: -15px;
    margin-right: -15px;
}

/** pagination **/

.pagination {
	border-top: 0;
	margin: 0;
	padding: 0.3em 0.2em;
	text-align: center;
	   -moz-box-shadow: 0 0 3px 1px #AAAAAA;
	-webkit-box-shadow: 0 0 3px 1px #AAAAAA;
	        box-shadow: 0 0 3px 1px #AAAAAA;
	background-color: #EFEFEF;
}

.pagination a,
.pagination .currentStep {
	color: #666666;
	display: inline-block;
	margin: 0 0.1em;
	padding: 0.25em 0.7em;
	text-decoration: none;
	   -moz-border-radius: 0.3em;
	-webkit-border-radius: 0.3em;
	        border-radius: 0.3em;
}

.pagination a:hover, .pagination a:focus,
.pagination .currentStep {
	background-color: #999999;
	color: #ffffff;
	outline: none;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
}

.no-borderradius .pagination a:hover, .no-borderradius .pagination a:focus,
.no-borderradius .pagination .currentStep {
	background-color: transparent;
	color: #444444;
	text-decoration: underline;
}
</style>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="css/font-awesome.css">
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<!-- body { padding-top: 60px; padding-bottom: 40px; } -->
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bootstrap.min.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link rel="stylesheet" href="${resource(dir: 'fancybox', file: 'jquery.fancybox-v=2.1.5.css')}" type="text/css" media="screen">


<!-- CSS (necessary for Bootstrap's CSS ) -->

<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'font-awesome.min.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'style.css')}">
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'bootstrap.css')}">

<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Titillium+Web:400,600,300,200&subset=latin,latin-ext">


<script type="text/javascript" src="js/html5shiv.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="fancybox/jquery.fancybox.pack-v=2.1.5.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<!-- fancybox init -->
<script>
	$(document).ready(function(e) {
		var lis = $('.nav > li');
		menu_focus(lis[0], 1);

		$(".fancybox").fancybox({
			padding : 10,
			helpers : {
				overlay : {
					locked : false
				}
			}
		});

	});
</script>

</head>
<body>
	<header>
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner" style="height: 60px;">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button>
						<a class="brand" href="#">Real Realty</a>
					</div>
					<div class="nav-collapse collapse navbar-responsive-collapse">
						<ul class="nav">
							<li style="color: white; padding-top: 10px;">
								<i class="icon-home icon-white"></i>  
							</li>
							<li class="active">
								<g:link controller="home" action="index">Home</g:link>
							</li>
							
						</ul>
						<div class="navbar-search pull-left">
							<g:form class="navbar-form navbar-left" controller="restClient" action="getProperties">
								<div class="form-group fieldcontain text-center">
									<input style="height: 30px;" type="text" required = "required" title="Search" value="" placeholder="Search " class="form-control nav-search" name="query"> 
									<span class="input-group-btn">
										<button class="btn btn-lg btn-primary" type="submit">Go!</button>
									</span>
								</div>
							</g:form>
						</div>
						<ul class="nav pull-right">
							<% if(session.username != null){ %>
								<li style="color: white; padding-top: 10px;">
									<i class="icon-th-list icon-white"></i>
								</li>
								<li>
									<g:link controller="restClient" action="getUserWatchlist">My Watclist</g:link>
								</li>
								<li style="color: white; padding-top: 10px;">
									<i class="icon-user icon-white"></i> ${session.username}</li>
								<li class="divider-vertical"></li>
								<li style="color: white; padding-top: 10px;">
									<i class="icon-user icon-white"></i>
								</li>
								<li>
									<g:link controller="user" action="logout"> Logout</g:link>
								</li>
							<% }
							else
							{ %>
								<li style="color: white; padding-top: 10px;">
									<i class="icon-user icon-white"></i>  
								</li>
								<li>
									<g:link mapping="register"> Sign In</g:link>
								</li>
							<%}%>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	
<!-- === MAIN Background === -->
	<div class="container-fluid">
		<hr>
		<% 
		if(offset == null)
			offset = 0
	
		if (max ==null)
			max = 10
		
		if(	max > properties.size())
			max = properties.size()
		
		for(int i=offset;i<offset+max;i++){ %>
		
			<div class="col-lg-12"  style="padding-top: 20px;">
				<div class="propertyItem">
				
					<div class="propertyContent row" style="margin-left: 40px; margin-right: 20px;">
						<div class="col-lg-4 col-md-4 col-sm-4">
							<a class="pull-left" href="#"> 
								<img class="media-object img-responsive" style="width: 300px; height: 250px; padding-top: 20px;" 
								src="http://images.prd.mris.com/image/V2/1/Yu59d899Ocpyr_RnF0-8qNJX1oYibjwp9TiLy-bZvU9vRJ2iC1zSQgFwW-fTCs6tVkKrj99s7FFm5Ygwl88xIA.jpg" 
								alt="64x64" data-src="holder.js/64x64">
							</a>
						</div>
						<div class="col-lg-8 rowText">
							<h4 style="padding-top: 10px; border-top-width: 20px; margin-top: 20px;">
								<g:link controller="restClient" action="getProperties" params="${['query':properties[i].address, 'watchlist':true]}">
									${properties[i].address} ${properties[i].city} ${properties[i].zipcode}
								</g:link>
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<span class="label label-success"> ${properties[i].zest_amt}</span>
							</h4>
							<dl class="dl-horizontal">
								<dt>Bathrooms</dt>
								<dd>
									${properties[i].bathroom}
								</dd>
								<dt>Bedrooms</dt>
								<dd>
									${properties[i].bedroom}
								</dd>
								<dt>Finished Sq.Ft Area</dt>
								<dd>
									${properties[i].finishedSqFt}
								</dd>
								<dt>Lot Sq.Ft Area</dt>
								<dd>
									${properties[i].lotSizeSqFt}
								</dd>
							</dl>
						</div>
						<br>
						<div class="col-md-2">
							<p>
							<% if(session.username != null && watchlist != true){ %>
								<g:form class="col-lg-12" controller="restClient" action="AddToUserWatchList" params="${ [address: properties[i].address]}">
									<button class="btn btn-lg btn-primary"style="margin-left: 20px; margin-top: 20px;" type="submit">Add to Watchlist!</button>
								</g:form>
							<% } %>
							</p>
						</div>
					</div>
				</div>
			</div>
		
		<% } %>
		<%if(watchlist){ %>
			<div class="pagination pagination-centered">
				<g:paginate class="btn btn-lg btn-primary"  total="${ total}" next="Forward" prev="Back" controller="restClient" 
                   action="paginateWatchList" params="${['query':params.query, 'total':total]}"/>
	    	</div>
		<%} else {%>
			<div class="pagination pagination-centered">
				<g:paginate class="btn btn-lg btn-primary"  total="${ total}" next="Forward" prev="Back" controller="restClient"
						action="paginateAddresses" params="${['query':params.query, 'total':total]}" />
					</div>
				</div>
			</div>
		<%} %>	
	</div>
	<br>
	<div id="footer" class="section footer" style = "height: 100px; background-color:#000000">
		<div class="container align-center" style="margin-top: 0px; border-top-width: 50px; padding-top: 50px;">
			<p class="text-muted credit align-center" style = "color: #777777; font-size: 16px; font-weight: 300; line-height: 1.6em;">&copy; Real Realty 2014</p>
		</div>
	</div>
	
</body>
</html>
