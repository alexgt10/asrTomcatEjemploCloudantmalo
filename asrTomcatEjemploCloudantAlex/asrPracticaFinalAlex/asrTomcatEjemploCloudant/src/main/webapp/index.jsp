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

	<!-- Google Fonts -->
 	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,600,700" rel="stylesheet"> 

	<!-- Custom & Default Styles -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/carousel.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" type="text/css" href="estilos.css">
	<link rel="icon" href="images/icono-1.ico" type="image/x-icon" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

</head>
<body>
	<div id="wrapper">
		<header class="header site-header">
			<div class="container">
				<nav class="navbar navbar-default yamm">
				    <div class="container-fluid">
<!-- 				        <div class="navbar-header"> -->
<!-- 							<a class="navbar-brand" href="/index.jsp"><img src="images/logo.png" alt="Linda"></a> -->
<!-- 				        </div> -->
				        <div id="navbar" class="navbar-collapse collapse">
				            <ul class="nav navbar-nav navbar-right">
				                <li class="active"><a href="index.jsp">Home</a></li>
				                </ul>
				        </div><!--/.nav-collapse -->
				    </div><!--/.container-fluid -->
				</nav><!-- end nav -->
			</div><!-- end container -->
		</header><!-- end header -->

		<section class="section transheader homepage parallax" data-stellar-background-ratio="0.5" style="background-image:url('upload/bg_04.jpg');">
			<div class="container">
				<div class="row">	
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center">
						<h2>Let's Analysis Your transcription </h2>
						<p class="lead">Now you can just transcript a record with just one click</p><div class="item-box">
						        <div class="item-top form-inline">
						            <div class="form-group">
						                <div class="input-group2">
						                    <span class="input-addon">
												<i class="fa fa-link"></i>
											</span>
										    <input type="file" class="form-control" name="audio" placeholder="Audio" class="form-control">
						                </div>
						            </div>
        							<form class="form-horizontal" action="speechToText" enctype="multipart/form-data" method="POST">						          
						            <input type="submit" name="send" value="Procesar" class="btn btn-default"/>
	    							</form>
						        </div>
						    </div>
					</div><!-- end col -->
				</div><!-- end row -->
			</div><!-- end container -->
		</section><!-- end section -->

		<section class="section nopad">
			<div class="container-fluid">
				<div class="row text-center">
					<div class="col-md-3 col-sm-6 nopad first">
						<div class="home-service c1">
							<i class="flaticon-competition"></i>
							<p>First step: upload your record</p>
						</div><!-- end home-service -->
					</div><!-- end col -->

					<div class="col-md-3 col-sm-6 nopad">
						<div class="home-service c2">
							<i class="flaticon-chat"></i>
							<p>Second step: Click on process button</p>
						</div><!-- end home-service -->
					</div><!-- end col -->

					<div class="col-md-3 col-sm-6 nopad">
						<div class="home-service c3">
							<i class="flaticon-domain"></i>
							<p>Third step: see the results</p>
						</div><!-- end home-service -->
					</div><!-- end col -->

					<div class="col-md-3 col-sm-6 nopad last">
						<div class="home-service c4">
							<i class="flaticon-medal"></i>
							<p>Finally: start again</p>
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