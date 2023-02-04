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
<legend><h1 style="margin:0px;">UPDATE</h1></legend>
<form name="member" method="post" action="/member/join_ok.do">
이름<input type="text" class="input" name="name" value="${member.name}" style="margin-left:85px; width:260px;"><br>
아이디<input type="text" class="input" name="id" value="${member.id}"style="margin-left:73px; width:260px;"><br>
비밀번호<input type="password" class="input" name="pw" value="${member.pw}"style="margin-left:59px; width:260px;"><br>
이메일 주소<input type="text" class="input" name="mail" value="${member.mail}" style="margin-left:42px; width:260px"><br>
<button type="button" class="button" onclick="checkForm()">정보수정</button>
<a href="/member/delete.do"><button type="button" class="button">회원탈퇴</button></a>
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
		updateMember();
	}
}
function updateMember(){
	document.member.action = '/member/update_ok.do';
	document.member.submit();
}
</script>
</html>