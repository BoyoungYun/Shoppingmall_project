<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../resource/res/css/index.css" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<legend><h1 style="margin:0px;">CART</h1></legend>
<table style="margin-left:30px">
<thead>
<tr>
<th></th><th>이미지</th><th>상품명</th><th>사이즈</th><th>가격</th><th>수량</th>
</tr>
</thead>
<tbody>
<c:forEach items="${cart}" var="cart">
<c:if test="${cart.count>0}">
<tr>
<td>
<form name="frm">
<input type="checkbox" name="chkbox" value="${cart.cost}" onclick="javascript:itemSum(${cart.cost}*${cart.count});">
</form>
</td>
<td>
<img src="${cart.src}" width="100px" height="100px">
<td>${cart.name}</td>
<td>${cart.size}</td>
<td>${cart.cost}</td>
<td>${cart.count}</td>
</tr>
</tbody>
</c:if>
</c:forEach>
</table>
<form>
총 가격 : <input type="text" id="total_sum">
</form>
</body>
<script>
var sum=0;
function itemSum(cost)
{
	sum+=parseInt(cost);
	document.getElementById("total_sum").value = sum;
}
</script>
</html>