<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<div style="padding: 5px;">


   <nav class="navbar navbar-default">
      <div class="container-fluid">

         <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </button>

         </div>


         <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

               <li class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
               <li><a href="${pageContext.request.contextPath}/productList">Product List</a></li>
               <li><a href="${pageContext.request.contextPath}/userInfo">My Account Info</a></li>


            </ul>
            <form class="navbar-form navbar-left">
               <div class="form-group">
                  <input type="text" class="form-control" placeholder="Search">
               </div>
               <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
               <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
            </ul>
         </div>
      </div>
   </nav>

</div>