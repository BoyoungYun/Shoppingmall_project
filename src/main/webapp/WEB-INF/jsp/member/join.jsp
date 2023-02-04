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
<br><br><br><br>
<fieldset>
<legend><h1 style="margin:0px;">JOIN US</h1></legend>
<form name="member" method="post" action="/member/join_ok.do">
이름<input type="text" class="input" name="name" style="margin-left:85px; width:260px;"><br>
아이디<input type="text" class="input" name="id" style="margin-left:73px; width:260px;"><br>
비밀번호<input type="password" class="input" name="pw" style="margin-left:59px; width:260px;"><br>
이메일 주소<input type="text" class="input" name="mail"style="margin-left:42px; width:260px"><br>
<button type="button" class="button" onclick="checkForm()">JOIN US</button>
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
		addMember();
	}
}
function addMember(){
	document.member.action = '/member/join_ok.do';
	document.member.submit();
}
</script>
</html>