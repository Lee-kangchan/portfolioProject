<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-02-02
  Time: 오후 2:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
    </style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/base1.css" rel="stylesheet">

</head>

<body>
<div class="container ">
    <div class="header right" >

        <img src="profile.jpg" width="20%" height="20%" >
        <h2> 홍길동</h2>
        <p> 이 곳은 자기소개 하는 곳</p>
    </div>

    <div style="clear:both">
        <ul class="nav">
            <li class="list left"> <a href="#" class="btn-default">정보변경</a></li>
            <li class="list left"> <a class="btn-default"> 테마변경 </a></li>
            <li class="list left"> <a class="btn-default">회원탈퇴 </a></li>
        </ul>
    </div>
    <hr style="clear: both; ;">
    <%%>
    <div class="row">
        <a href="#" class="btn-default">
            <div class="col-sm-6 ">
                <div class="card">

                    <div class="card-body">
                        <h2 class="card-title">Special title treatment</h2>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>

            </div>

        </a>

        <a href="#" class="btn-default">
            <div class="col-sm-6 ">
                <div class="card">

                    <div class="card-body">
                        <h2 class="card-title">Special title treatment</h2>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                    </div>
                </div>

            </div>

        </a>
    </div>


</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
</html>
