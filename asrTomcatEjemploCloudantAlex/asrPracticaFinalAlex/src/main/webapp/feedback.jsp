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
		Guillarino's Dictionary
	</title>
</head>



<body>
<div id="cabecera">
	<div class="col-sm-6 col-sm-offset-3" id="titulo" style="text-align:center; font-size:30px; padding-top:20px;">
			<a href="index.jsp" style="color:#FFF;text-decoration:none;">Guillarino's Dictionary</a>
	</div>
</div>

<div id="cuerpo">

	        <legend class="text-center h1">Feedback</legend>
	        <br>
	        
	            <br>
	            <br>
	            		<div class="col-md-12"><div class="col-md-offset-1 col-md-2 text-center">Transcripción al idioma original</div>
	                <div class="col-md-9 text-center" style="border: 2px solid #EAECEE; border-radius:5px;">${requestScope.original}</div>
	                </div>
	                <br>
	                <div class="col-md-12" style="margin-top:10px;"><div class="col-md-offset-1 col-md-2 text-center">Traducción al inglés</div>
					<div class="col-md-9 text-center" style="border: 2px solid #EAECEE; border-radius:5px;">${requestScope.traducido}</div>
					</div>
					<br>
					<div class="col-md-12" style="margin-top:10px;"><div class="col-md-offset-1 col-md-2 text-center">Ánalisis de sentimiento</div>
					<div class="col-md-9 text-center" style="border: 2px solid #EAECEE; border-radius:5px;">${requestScope.tone}</div></div>
					<div class="col-md-2 col-md-offset-6" style="margin-top:10px;"><a href="index.jsp">Volver al Inicio</a></div>
</div>


<footer id="footer">
	<a href="https://es-es.facebook.com/ibmwatson" ><div class="col-md-offset-2 col-md-8"><img style="height:70%;width:8%;padding-top:20px;padding-left:12px" src="images/facebook.png"></a><a href="https://twitter.com/ibmwatson?lang=es"><img style="height:70%;width:8%;padding-top:20px;padding-left:12px" src="images/twitter.png"></a></div>
</footer>
</body>
</html>