<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Product List</title>

   <link href="../static/main.css" rel="stylesheet" type="text/css" />
   <link href="../static/bootstrap.min.css" rel="stylesheet" type="text/css" />

</head>
<body>

<jsp:include page="_header.jsp"></jsp:include>
<jsp:include page="_menu.jsp"></jsp:include>

<div class="container">
   <h3>Product List</h3>
   <p style="color: red;">${errorString}</p>
   <table class="table table-bordered">
      <thead>
      <tr>
         <th>Code</th>
         <th>Name</th>
         <th>Price</th>
         <th>Edit</th>
         <th>Delete</th>
      </tr>
      <c:forEach items="${productList}" var="product" >
         <tr>
            <td>${product.code}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>
               <a href="editProduct?code=${product.code}">Edit</a>
            </td>
            <td>
               <a href="deleteProduct?code=${product.code}">Delete</a>
            </td>
         </tr>
      </c:forEach>
      </thead>

   </table>
   <a href="createProduct" >Create Product</a>
</div>

<jsp:include page="_footer.jsp"></jsp:include>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    <%@include file='/static/bootstrap.js'%>
</script>
</body>
</html>