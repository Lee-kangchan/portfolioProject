<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-01-30
  Time: 오후 7:40
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
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/base.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body >


<div class="row" >
    <div class="p-3 mb-2 bg-primary text-white sidebar" style=" height:1000px; width: 30%; position: fixed;">
        <div style="height: 400px;">&nbsp;</div>
        <div class="text-center">

            <img src="profile.jpg" alt="" width="100" height="100">
            <h2>홍길동</h2>
            <p class="font-italic"> 자기소개 글입니다sdsd</p>
        </div>
    </div>
    <div class="col-md-4 "></div>
    <div class="col-md-7 p-3 mb-2  text-white font-weight-light" style=" ">
        <div class="raw">
            <ul style="list-style-type: none; float: left;">
                <li style="float: left;">
                    <a class="btn-default">정보변경</a>
                </li>
                <li style="float: left;">
                    <a class="btn-default"> 테마변경 </a>
                </li>
                <li style="float: left;">
                    <a class="btn-default">회원탈퇴 </a>
                </li>

                <li>
                    <span   style="float: right;"><a class="glyphicon glyphicon-log-in  btn-default right" aria-hidden="true"></a></span>
                </li>
                <li>
                    <span   style="float: right;"><a class="glyphicon glyphicon-plus btn-default right" aria-hidden="true"></a></span>
                </li>
            </ul>
            <hr style="clear: both;">
        </div>
        <div class="raw">
            <div class="col-md-3 ">

                <strong> 파일명 </strong>
                <li style="list-style-type: none;"><a class="btn-default">text</a></li>
                <li style="list-style-type: none;"><a class="btn-default">c</a></li>
                <li style="list-style-type: none;"><a class="btn-default">java</a></li>
                <li style="list-style-type: none;"><a class="btn-default">JavaScript</a></li>
                <li style="list-style-type: none;"><a class="btn-default">Python</a></li>
            </div>
            <div class="col-md-8 rearbody">
                <div class="card-body" >
                    <button class="btn btn-default ">
                        <h3 class="card-title text-left">text</h3>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </button>
                </div><div class="card-body" >
                <button class="btn btn-default ">
                    <h3 class="card-title text-left">text</h3>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </button>
            </div><div class="card-body" >
                <button class="btn btn-default ">
                    <h3 class="card-title text-left">text</h3>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </button>
            </div>
            </div>
        </div>
    </div>
</div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
<script src="../../assets/js/vendor/holder.js"></script>
</body>
</html>
