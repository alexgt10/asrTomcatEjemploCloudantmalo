<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <!-- Site Meta -->
    <title>Transcriptor APP</title>
    
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

	<!-- Google Fonts -->
 	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,600,700" rel="stylesheet"> 

	<!-- Custom & Default Styles -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/carousel.css">
	<link rel="stylesheet" href="style.css">

</head>
<body>
	
	<div id="wrapper">
        <div class="topbar">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6 hidden-xs">
                        <nav class="topbar-menu">
                            <ul class="list-inline">
                            	<li>Follow us: </li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul><!-- end list -->
                        </nav><!-- end menu -->
                    </div><!-- end col -->

                    <div class="col-md-6 col-sm-6">
                        <nav class="topbar-menu">
                            <ul class="list-inline text-right navbar-right">
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="images/us.png" alt=""> English
                                    <span class="fa fa-angle-down"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#"><img src="images/tr.png" alt=""> Turkish</a></li>
                                        <li><a href="#"><img src="images/si.png" alt=""> Spanish</a></li>
                                        <li><a href="#"><img src="images/it.png" alt=""> Italian</a></li>
                                        <li><a href="#"><img src="images/ae.png" alt=""> Arabic</a></li>
                                        <li><a href="#"><img src="images/de.png" alt=""> German</a></li>
                                    </ul>
                                </li>
                                <li class="hidden-xs"><i class="fa fa-clock-o"></i> 08:00 - 17:00</li>
                                <li><i class="fa fa-phone"></i> +90 987 665 55 44</li>
                            </ul><!-- end list -->
                        </nav><!-- end menu -->
                    </div><!-- end col -->
                </div><!-- end row -->
            </div><!-- end container -->
        </div><!-- end topbar -->

		<header class="header site-header">
			<div class="container">
				<nav class="navbar navbar-default yamm">
				    <div class="container-fluid">
				        <div class="navbar-header">
				            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				                <span class="sr-only">Toggle navigation</span>
				                <span class="icon-bar"></span>
				                <span class="icon-bar"></span>
				                <span class="icon-bar"></span>
				            </button>
							<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="Linda"></a>
				        </div>
				        <div id="navbar" class="navbar-collapse collapse">
				            <ul class="nav navbar-nav navbar-right">
				                <li class="active"><a href="index.html">Home</a></li>
				                <li><a href="page-about.html">What is SEO?</a></li>
				                </ul>
				        </div><!--/.nav-collapse -->
				    </div><!--/.container-fluid -->
				</nav><!-- end nav -->
			</div><!-- end container -->
		</header><!-- end header -->

		<section class="section transheader homepage parallax" data-stellar-background-ratio="0.5" style="background-image:url('upload/bg_04.jpg');">
			<div class="container">
			<form class="form-horizontal" action="toText" enctype="multipart/form-data" method="POST">
				<div class="row">	
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
						<h2>Let's Analysis Your transcription </h2>
						<p class="lead">Now you can just transcript a record with just one click</p>
						<form class="calculateform">
						    <div class="item-box">
						        <div class="item-top form-inline">
						            <div class="form-group">
						                <div class="input-group2">
						                    <span class="input-addon">
												<i class="fa fa-link"></i>
											</span>
										    <input type="file" class="form-control" name="audio" placeholder="Audio" class="form-control">
						                </div>
						            </div>
						            <button type="submit" value="Procesar" class="btn btn-default"></button>
						        </div>
						    </div>
						</form>
					</div><!-- end col -->
				</div><!-- end row -->
				</form>
			</div><!-- end container -->
		</section><!-- end section -->

		<section class="section nopad">
			<div class="container-fluid">
				<div class="row text-center">
					<div class="col-md-3 col-sm-6 nopad first">
						<div class="home-service c1">
							<i class="flaticon-competition"></i>
							<p>Owners: Promote your site on Google searches</p>
						</div><!-- end home-service -->
					</div><!-- end col -->

					<div class="col-md-3 col-sm-6 nopad">
						<div class="home-service c2">
							<i class="flaticon-chat"></i>
							<p>Publishers: Make money with blog articles</p>
						</div><!-- end home-service -->
					</div><!-- end col -->

					<div class="col-md-3 col-sm-6 nopad">
						<div class="home-service c3">
							<i class="flaticon-domain"></i>
							<p>Analyzers: Benefits from SEO analysis tools</p>
						</div><!-- end home-service -->
					</div><!-- end col -->

					<div class="col-md-3 col-sm-6 nopad last">
						<div class="home-service c4">
							<i class="flaticon-medal"></i>
							<p>Beginners: Learn more about search engines</p>
						</div><!-- end home-service -->
					</div><!-- end col -->
				</div><!-- end row -->
			</div><!-- end container -->
		</section><!-- end section -->
	</div><!-- end wrapper -->

	<!-- jQuery Files -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>