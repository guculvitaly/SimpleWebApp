<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Info</title>

    <link href="../static/main.css" rel="stylesheet" type="text/css" />
    <link href="../static/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>

<jsp:include page="_header.jsp"></jsp:include>
<jsp:include page="_menu.jsp"></jsp:include>

<h3>Hello: ${user.userName}</h3>

User Name: <b>${user.userName}</b>
<br>
Gender: ${user.gender } <br>

<jsp:include page="_footer.jsp"></jsp:include>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    <%@include file='/static/bootstrap.js'%>
</script>

</body>
</html>