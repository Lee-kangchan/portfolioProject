<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-01-29
  Time: 오전 10:48
  To change this template use File | Settings | File Templates.
--%>
<% String id = (String)session.getAttribute("id");%>
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
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/theme1.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

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
                <li class="active" id="themeAjax"><a>테마</a></li>
                <li ><a href="#">문의</a>
                <li><a href="#about"></a></li>
            </ul>
            <%if(id==null){%>
            <form class="navbar-form navbar-right" action="/login" method="post" >
                <div class="form-group">
                    <input type="text" placeholder="Email" name="email" Class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" name="password" Class="form-control">
                </div>
                <button type="submit" class="btn btn-success">로그인</button>
            </form>
            <%} else{ %>
            <form action="/portfolio" method="get">
            <button style="float: right; margin-top: 8px"type="button" class="btn btn-default" aria-label="right Align">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
            </button>
            </form>
            <% } %>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container" id="main">

    <div class="row">
        <div class="col col-lg-2">
            　<p>&nbsp;</p>
        </div>
        <div class="col col-lg-17">
            <div class="jumbotron">
                <h1>포트폴리오 시작하기</h1>
                <p class="lead">포트폴리오를 제작하기 누르시면 클릭</p>
                <a class="btn btn-success btn-lg btn-primary" href="portfolio" role = "button">View</a>
            </div>
        </div>

    </div>
    <div class="row">

        <div class="col col-lg-2">
            <div class="starter-template alert alert-info" >
                <p class="lead ">우수회원 TOP5</p>
                <ol style="text-align: left;">
                    <li>HONANDA</li>
                    <li>LEMONON</li>
                    <li>FINEAPLLE</li>
                </ol>
            </div>
        </div>
        <div class="col col-lg-5 other-1">
            <div>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">공지사항</th>
                    </tr>
                    </thead>

                    <tr>
                        <td scope="row">1. 포트폴리오 작성시 주의해야할 점</td>
                    </tr>
                    <tr>
                        <td scope="row">2. 신고 시 유의할 점</td>
                    </tr>
                    <tr>
                        <td scope="row">3. 우수회원 기준표</td>
                    </tr>
                    <tr>
                        <td scope="row">&nbsp;</td>
                    </tr>
                    <tr>
                        <td scope="row">&nbsp;</td>
                    </tr>
                    <tr>
                        <td scope="row">&nbsp;</td>
                    </tr>
                    <tr>
                        <td scope="row">&nbsp;</td>
                    </tr>
                    <tr>
                        <td scope="row">&nbsp;</td>
                    </tr>
                    <tr>
                        <td scope="row">&nbsp;</td>
                    </tr>
                    <tr>
                        <td scope="row">&nbsp;</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
        <div class="col align-self-end ">
            <span class="badge badge-pill badge-secondary" style="text-align: center;">우수 포트폴리오</span>
            <div class="bg-secondary text-white " role="alert">
                <h2>C언어 학습</h2>
                <p>C언어는 절차지향적 언어이다 ...</p>
            </div>
            <div class="bg-secondary text-white" role="alert">
                <h2>JAVA언어 학습</h2>
                <p>JAVA언어는 객체지향적 언어이다 ...</p>
            </div>
            <div class="bg-secondary text-white" role="alert">
                <h2>JAVASCRIPT언어 학습</h2>
                <p>JAVASCRIPT언어는 객체기반 언어이다 ...</p>
            </div>
        </div>

    </div>
    <footer style="clear:both">
        <p class="font-italic text-black-50 text-center">D.n Email: lsc3229@naver.com   Tel: 010-7590-3229</p> </small>
    </footer>
</div><!-- /.container -->



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
<script>
    let mainpage ;
    $('#themeAjax').click(function(){
        $.ajax({
            type:"GET",
            url:"/theme",
            dataType:"json",
            success:function(data){	//data : checkSignup에서 넘겨준 결과값
                alert("hello")
                var count =0;
                let theme ="\n" +
                    "    <h2>theme shop</h2>\n" +
                    "    <span ><hr></span>"

                console.log(data)
                for(i=0; i<data.length ; i++){
                    console.log(data[i].name)

                     theme +=
                        "    <div class=\"theme\"style=\"text-align: center; border : solid thin silver\">\n" +
                        "\n" +
                        "        <img src=\" ${pageContext.request.contextPath}" +data[i].img +" \"  alt=\"테마\" width=\"100%\" >\n" +
                        "        <div style=\"text-align: left;\">\n" +
                        "            <h2 >"+data[i].name +"</h2>\n" +
                        "            <p> "+data[i].content +"</p>\n" +
                        "        </div>\n" +
                        "\n" +
                        "\n" +
                        "        <a class=\"glyphicon glyphicon-plus btn-default themeplus\" id=\""+data[i].num+"\" style=\"text-align: right;\"> </a>\n"+
                        "</div>";
                }
                mainpage = $('#main').children();
                $('#main').children().remove();
                $('#main').html(theme);

                $(".themeplus").click(function(){
                    $.ajax({
                        type:"post",
                        url:"/theme/"+$(this).attr("id"),
                        dataType: "text",
                        success:function (data)
                        {
                            if(data=="/login"){
                                let login = "<form class=\"form-signin\" action=\"/login\" method=\"post\">\n" +
                                    "        <h2 class=\"form-signin-heading\">로그인</h2>\n" +
                                    "        <input type=\"email\" id=\"inputEmail\" class=\"form-control\" name=\"email\" placeholder=\"Email address\" required autofocus>\n" +
                                    "        <input type=\"password\" id=\"inputPassword\" class=\"form-control\" name = \"password\" placeholder=\"Password\" required>\n" +
                                    "        <button class=\"btn btn-lg btn-success btn-block\" type=\"submit\">로그인</button>\n" +
                                    "\n" +
                                    "    </form>\n" +
                                    "    <form class=\"form-signin\" action=\"/sign\">\n" +
                                    "    <button type=\"submit\" class=\"btn btn-lg btn-primary btn-block\" >회원가입</button>\n" +
                                    "    </form>"


                                $('#main').children().remove();
                                $('#main').html(login);
                            }
                            else if(data=="already"){
                                alert("이미 존재하는 파일입니다.");
                            }
                            else{
                                alert("추가되었습니다.")
                                $('#main').children().remove();
                                $('#main').html(mainpage);
                            }
                        },
                        error:function () {

                        }
                    })
                })
            }
        })
    })

</script>
</html>
