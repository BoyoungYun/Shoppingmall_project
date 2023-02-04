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
			<a href="/member/login.do">로그인</a>&nbsp;&nbsp;&nbsp;
			<a href="/member/join.do">회원가입</a>&nbsp;&nbsp;&nbsp;
		</c:when>
		<c:otherwise>
			<a href="/member/logout.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
			<a href="/member/update.do">정보 수정</a>&nbsp;&nbsp;&nbsp;
		</c:otherwise>
	</c:choose>

<a href="/cart.do">장바구니</a>&nbsp;&nbsp;&nbsp;
<a href="/board/board.do">게시판</a>
</span>
</body>
</html>