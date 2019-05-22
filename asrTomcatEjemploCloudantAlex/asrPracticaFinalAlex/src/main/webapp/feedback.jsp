<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="estilos.css">
	<link rel="icon" href="images/icono-1.ico" type="image/x-icon" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
	<title>
		Transcription Results
	</title>
</head>



<body>
<div id="cabecera">
	<div class="col-sm-6 col-sm-offset-3" id="titulo" style="text-align:center; font-size:30px; padding-top:20px;">
			<a href="index.jsp" style="color:#FFF;text-decoration:none;">Transcription Results</a>
	</div>
</div>

<div id="cuerpo">

	        <legend class="text-center h1">Results</legend>
	        <br>
	        
	            <br>
	            <br>
	            		<div class="col-md-12"><div class="col-md-offset-1 col-md-2 text-center">Transcription</div>
	                <div class="col-md-9 text-center" style="border: 2px solid #EAECEE; border-radius:5px;">${requestScope.original}</div>
	                </div>
	                <br>
	                <div class="col-md-12" style="margin-top:10px;"><div class="col-md-offset-1 col-md-2 text-center">Traducction to english</div>
					<div class="col-md-9 text-center" style="border: 2px solid #EAECEE; border-radius:5px;">${requestScope.traducido}</div>
					</div>
					<br>
<!-- 					<div class="col-md-12" style="margin-top:10px;"><div class="col-md-offset-1 col-md-2 text-center">Ánalisis de sentimiento</div> -->
<%-- 					<div class="col-md-9 text-center" style="border: 2px solid #EAECEE; border-radius:5px;">${requestScope.tone}</div></div> --%>
					<div class="col-md-2 col-md-offset-6" style="margin-top:10px;"><a href="index.jsp">Return</a></div>
</div>
</body>
</html>