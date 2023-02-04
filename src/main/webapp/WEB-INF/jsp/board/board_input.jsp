<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<table style="margin:0px">
<tbody>
<form method="post" action="/board/processBoardInput.do">
<tr>
<td>제목 : <input type="text" name="title"></td>
<tr>
<td>작성자 : <input type="text" name="writer"></td>
</tr>
<tr>
<td><textarea style="width:700px; height:300px; resize:none;" name="content"></textarea></td>
</tr>
<tr>
</tr>
</tbody>
</table>
<button type="submit" class="button">작성하기</button>
</form>
</body>
</html>