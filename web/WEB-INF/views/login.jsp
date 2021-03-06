<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-01-29
  Time: 오전 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">


    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">.NET</a>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
            <form class="navbar-form navbar-left">
                <input type="text" placeholder="Search" Class="form-control">
            </form>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">테마</a></li>
                <li ><a href="#">문의</a>
                <li><a href="#about"></a></li>
            </ul>

            <form class="navbar-form navbar-right" action="/login" method="post">
                <div class="form-group">
                    <input type="text" name="email" placeholder="Email" Class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" Class="form-control">
                </div>
                <button type="submit" class="btn btn-success">로그인</button>
            </form>
        </div><!--/.nav-collapse -->

    </div>

</nav>
<div class="container col align-self-center " style="text-align: center;">
    <form class="form-signin" action="/login" method="post">
        <h2 class="form-signin-heading">로그인</h2>
        <input type="email" id="inputEmail" class="form-control" name="email" placeholder="Email address" required autofocus>
        <input type="password" id="inputPassword" class="form-control" name = "password" placeholder="Password" required>
        <button class="btn btn-lg btn-success btn-block" type="submit">로그인</button>

    </form>
    <form class="form-signin" action="/sign">
    <button type="submit" class="btn btn-lg btn-primary btn-block" >회원가입</button>
    </form>
</div> <!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
