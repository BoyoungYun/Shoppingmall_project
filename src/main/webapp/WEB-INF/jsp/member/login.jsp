<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<br><br><br><br><br><br><br>
<fieldset>
<legend><h1 style="margin:0px;">LOGIN</h1></legend>
<form name="member" method="post" action="/member/login_ok.do">
<input type="text" class="input" name="id" placeholder="ID"><br>
<input type="password" class="input" name="pw" placeholder="PASSWORD"><br>
<button type="button" class="button" onclick="checkForm()">LOGIN</button>
<button type="button" onclick="location.href='join.do'" class="button">JOIN US</button>
</form>
</fieldset>
</div>
</body>
<script>
function checkForm() {
	if (document.member.id.value=="") {
		alert("ID를 입력해주세요.");
		return false;
	}

	else if (document.member.pw.value=="") {
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	else
	{
		loginMember();
	}
}
function loginMember(){
	document.member.action = '/member/login_ok.do';
	document.member.submit();
}
</script>
</html>