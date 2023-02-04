<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="../resource/res/css/index.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Forever Young</title>
</head>
<body>
<span class="nav">
	<c:choose>
		<c:when test="${member == null}">
			<a href="/member/login.do">�α���</a>&nbsp;&nbsp;&nbsp;
			<a href="/member/join.do">ȸ������</a>&nbsp;&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			<a href="/member/logout.do">�α׾ƿ�</a>&nbsp;&nbsp;&nbsp;
			<a href="/member/update.do">���� ����</a>&nbsp;&nbsp;&nbsp;
		</c:otherwise>
	</c:choose>

<a href="/cart.do">��ٱ���</a>&nbsp;&nbsp;&nbsp;
<a href="/board/board.do">�Խ���</a>
</span>
</body>
</html>