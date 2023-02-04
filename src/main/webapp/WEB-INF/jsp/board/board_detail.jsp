<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="../resource/res/css/index.css" />
<jsp:include page="index.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Forever Young</title>
</head>
<body>
<div class="main">
<br><br>
<fieldset>
<legend><h1 style="margin:0px;">BOARD</h1></legend>
<table style="margin-left:125px;">
<tbody>
<c:forEach items="${board}" var="board">
<c:if test="${board.id eq param.id}">
<tr>
<td>${board.title}</td>
</tr>
<tr>
<td>${board.content}</td>
</tr>
</c:if>
</c:forEach>
</tbody>
</body>
</html>