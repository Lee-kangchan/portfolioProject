<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dn.model.user.UserVO" %><%--
  Created by IntelliJ IDEA.
  User: NESOY
  Date: 2017-02-04
  Time: 오후 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>$Title$</title>
</head>
<body>
Hello Spring World
<c:forEach var="vo" items="${user}">
  <p>${vo.id}</p>
  <p>${vo.password}</p>
</c:forEach>
</body>
</html>