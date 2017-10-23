<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home Page</title>

	<link href="../static/main.css" rel="stylesheet" type="text/css" />
	<link href="../static/bootstrap.min.css" rel="stylesheet" type="text/css" />




</head>
<body>
<jsp:include page="_header.jsp"></jsp:include>
<jsp:include page="_menu.jsp"></jsp:include>

<div class="hero-image">
	<div class="hero-text">

		<h1 class="h-home">This is servlet application using jsp, servlet and jdbc</h1>


	</div>
</div>




<br><br>

<b>It includes the following functions</b>
<ul>
	<li>login</li>
	<li>Storing user information in cookies</li>
	<li>Product list</li>
	<li>Create Product</li>
	<li>Edit Product</li>
	<li>Delete Product</li>
</ul>



<jsp:include page="_footer.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    <%@include file='/static/bootstrap.js'%>
</script>





</body>
</html>