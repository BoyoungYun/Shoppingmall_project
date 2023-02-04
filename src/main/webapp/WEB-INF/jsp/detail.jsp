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
<br>상세 페이지<br><br><br>
<table style=margin-left:450px;font-size:20px;>
<tbody>
<tr>
<c:forEach items="${list}" var="list">
<c:if test="${list.id eq param.id}">
<td rowspan='5' colspan='2' style="padding-right: 30px;"><img src="${list.src}" width="350px" height="350px"></td>
<td>${list.name}</td>
</tr>
<tr>
<td>Price : ${list.cost}won</td>
</tr>
<tr>
<td>
<form name="sizeform" method="post" action="processCart.do" style="font-size:20px;margin:0px;">
<input type="hidden" name="id" value="${list.id}">
<input type="hidden" name="name" value="${list.name}">
<input type="hidden" name="src" value="${list.src}">
<input type="hidden" name="cost" value="${list.cost}">
Size : 
<select name="size">
<option value="S">S</option>
<option value="M">M</option>
<option value="L">L</option>
</select>
</td>
</tr>
<tr>
<td>
수량 :  
<select name="count">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select>
</form> 
</td>
</tr>
<tr>
<td>
<form>
<button type="button" class="button" onclick="javascript:to_cart();">CART</button>
</form>
</td>
</tr>
</tbody>
</table>
</div>
</body>
<script>
	function to_cart()
	{
		document.sizeform.action = '/processCart.do';
		document.sizeform.submit();
	}
</script>
</c:if>
</c:forEach>
</html>