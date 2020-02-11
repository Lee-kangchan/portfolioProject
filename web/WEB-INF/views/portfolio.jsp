<%@ page import="com.dn.model.portfolio.PortfolioVO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dn.model.user.UserVO" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-01-30
  Time: 오후 7:40
  To change this template use File | Settings | File Templates.
--%>
<%
    List<PortfolioVO> portfolioVO = (List) request.getAttribute("getPortfolio");
    UserVO userVO = (UserVO) request.getAttribute("getUser");
%>
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
            <h2><%=userVO.getName()%></h2>
            <% if(userVO.getName()==null){ %> <p class="font-italic"> 자기소개를 입력하세요. </p><% }
             else{ %>  <p class="font-italic"> <%=userVO.getIntro()%></p> <%}%>
        </div>
    </div>
    <div class="col-md-4 "></div>
    <div class="col-md-7 p-3 mb-2  text-white font-weight-light" style=" ">
        <div class="raw">
            <ul style="list-style-type: none; float: left;">
                <li style="float: left;">
                    <a class="btn-default" id ="transInformation">정보변경</a>
                </li>
                <li style="float: left;">
                    <a class="btn-default" id="transTheme"> 테마변경 </a>
                </li>
                <li style="float: left;">
                    <a class="btn-default" id="userCut">회원탈퇴 </a>
                </li>

                <li>
                    <span   style="float: right;"><a class="glyphicon glyphicon-log-in  btn-default right" id="home" aria-hidden="true"></a></span>
                </li>
                <li>
                    <span   style="float: right;"><a class="glyphicon glyphicon-plus btn-default right" id="plus" aria-hidden="true"></a></span>
                </li>
            </ul>
            <hr style="clear: both;">
        </div>
        <div class="raw">
            <div class="col-md-3 ">

                <strong> 파일명 </strong>
                <%for(PortfolioVO vo : portfolioVO){%>
                <li style="list-style-type: none;"><a class="btn-default"><%= vo.getName()%></a></li>

                <%}%>
            </div>
            <div class="col-md-8 rearbody">
                <%for(PortfolioVO vo : portfolioVO){%>
                <div class="card-body box" >
                    <button class="btn btn-default detail ">
                        <h3 class="card-title text-left"><%=vo.getName()%></h3>
                        <p class="card-text"><%=vo.getContent()%></p>
                    </button>
                </div>
                <%}%>
        </div>
    </div>
</div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->

<script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
<script>
    $(document).ready(function () {




    let rearbody;
    $(".box").click(function () {

    })
    $("#transInformation").click(function () {
                let form =
                    "<form id=\"form\" action=\"\information\" method=\"post\">\n" +
                    "                      <div class=\"form-group\">\n" +
                    "                          <label for=\"inputName\">닉네임</label>\n" +
                    "                          <input type=\"text\" class=\"form-control\" name=\"name\" id=\"inputName\" placeholder=\"이름을 입력해 주세요\">\n" +
                    "                      </div>\n" +
                    "                      <div class=\"form-group\">\n" +
                    "                          <label for=\"inputPassword\">비밀번호</label>\n" +
                    "                          <input type=\"password\" class=\"form-control\" name=\"password\" id=\"inputPassword\" placeholder=\"비밀번호를 입력해주세요\">\n" +
                    "                      </div>\n" +
                    "                      <div class=\"form-group\">\n" +
                    "                          <label for=\"inputPasswordCheck\">비밀번호 확인</label>\n" +
                    "                          <input type=\"password\" class=\"form-control\" id=\"inputPasswordCheck\" placeholder=\"비밀번호 확인을 위해 다시한번 입력 해 주세요\">\n" +
                    "                      </div>\n" +
                    "                      \n" +
                    "                      <div class=\"form-group\">\n" +
                    "                        \n" +
                    "                      <label for=\"inputIntro\">자기소개</label>\n" +
                    "                          <textarea class=\"form-control\" id=\"inputIntro\" name=\"intro\" rows=\"3\"></textarea>\n" +
                    "                      </div>\n" +
                    "\n" +
                    "                    <div class=\"form-group\">\n" +
                    "                      <label for=\"exampleInputFile\">File input</label> \n" +
                    "                      <input type=\"file\" id=\"exampleInputFile\" name=\"img\"> \n" +
                    "                      <p class=\"help-block\">회원 사진을 등록하시려면 클릭</p> \n" +
                    "                    </div>\n" +
                    "\n" +
                    "                      <div class=\"form-group text-center\">\n" +
                    "                        <button id=\"join-submit\" type=\"submit\" class=\"btn btn-primary\">\n" +
                    "                            수정하기<i class=\"fa fa-check spaceLeft\"></i>\n" +
                    "                        </button>\n" +
                    "                    </div>\n" +
                    "                    \n" +
                    "                    \n" +
                    "                </form>"



                rearbody = $('#main').children();
                $('.rearbody').children().remove();
                $('.rearbody').html(form);

        })

    $("#transTheme").click(function () {
        $.ajax({
            type:"post",
            url:"/theme",
            dataType:"json",
            success:function(data){	//data : checkSignup에서 넘겨준 결과값
                alert("hello");
                var count =0;
                let theme ="";
                console.log(data);
                console.log(data.length)

                for(let i=0; i<data.length ; i++){
                    console.log(data[i].name);

                    console.log("왜안되냐고");
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
                        "        <a href=\"/change?num="+data[i].theme_num+" \"class=\"glyphicon glyphicon-plus btn-default themeplus\" id=\""+data[i].theme_num+"\" style=\"text-align: right;\"> </a>\n"+
                        "</div>";
                    console.log("왜안되징")

                }
                rearbody = $('#main').children();
                $('.rearbody').children().remove();
                $('.rearbody').html(theme);


            }
        });
    })
        $("#plus").click(function(){
            let text =
                "<form action='description' method='post'>\n" +
                "<div class=\"form-group\">\n" +
                "        <label for=\"inputName\">제목</label>\n" +
                "        <input type=\"text\" class=\"form-control\" name=\"name\" id=\"inputName\" placeholder=\"제목을 입력해주세요 \">\n" +
                "    </div>\n" +
                "    <div class=\"form-group\">\n" +
                "        <label for=\"inputContent\">간단한 내용</label>\n" +
                "        <input type=\"text\" class=\"form-control\" name=\"content\" id=\"inputContent\" placeholder=\"내용을 입력해주세요 \">\n" +
                "    </div> \n" +
                "<div class=\"form-group\">\n "+
                "<textarea id=\"summernote\" name=\"description\" ></textarea>"+
                "</div>\n" +
                "    <div class=\"form-group\">\n" +
                "        <label for=\"inpuTag\">태그명</label>\n" +
                "        <input type=\"text\" class=\"form-control inputTag   \" name=\"tag\" i placeholder=\"태그을 입력해주세요 \">\n" +
                "    </div> \n" +
                "<button type='submit' class='btn btn-primary'>작성</button>"
                "</form>"

            $('.rearbody').children().remove();
            $('.rearbody').html(text);

            $('#summernote').summernote({  // summernote 사용하기 위한 선언
                placeholder: 'Hello stand alone ui',
                height: 600,
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['link', 'picture', 'video']],
                    ['view', ['fullscreen', 'codeview', 'help']]
                    ],
                callbacks:{ // 콜백 함수
                    //이미지 업로드 할때 사용
                     onImageUpload: function(files, editor, welEditable) {
                     sendFile(files[0],this);
                }
                }
            });

        })
        function sendFile(file, editor) {
            var data = new FormData();
            data.append('file', file);
            $.ajax({
                data: data,
                type: "POST",
                dataType: "text",
                url: '/image',
                cache: false,
                contentType: false,
                enctype: 'multipart/form-data',
                processData: false,
                success: function(data) {

                    console.log(data);

                    // $('#summernote').append('<img src="'+data+'" width="480" height="auto"/>');
                    $(editor).summernote('editor.insertImage', "${pageContext.request.contextPath}/resources/upload/"+data);
                    $(editor).summernote('editor.insertImage', "${pageContext.request.contextPath}/resources/upload/3edf92fe-70cf-4de5-a648-f8768df3fbc0_profile.jpg");

                },
                error:function(){
                    console.log("img error");
                }
            });
        }

    })

</script>
</html>
