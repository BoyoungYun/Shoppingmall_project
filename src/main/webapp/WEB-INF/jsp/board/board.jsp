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
<table style="margin-left:50px">
<thead>
<th style="padding-left:30px;"></th><th style="padding-left:30px;">No</th><th style="padding-left:30px;">제목</th><th style="padding-left:30px;">작성자</th><th style="padding-left:30px;">작성일</th>
</thead>
<tbody>
<c:forEach items="${board}" var="board">
<tr>
<td>
<form name="frm">
<input type="checkbox" name="chkbox">
</form>
</td>
<td style="padding-left:30px;">${board.id}</td>
<td style="padding-left:30px;"><a href="/board/board_detail.do?id=${board.id}">${board.title}</a></td>
<td style="padding-left:30px;">${board.writer}</td>
<td style="padding-left:30px;"><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd"/></td>
</tr>
</a>
</c:forEach>
</tbody>
</table>
<a href="/board/board_input.do"><button type="button" class="button">작성하기</button></a>
</body>
</html>