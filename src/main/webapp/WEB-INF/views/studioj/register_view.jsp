<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 | 스튜디오U</title>
<script type="text/javascript">
	function pwchk(){
		pw1 = document.getElementById("pw1").value;
		pw2 = document.getElementById("pw2").value;
		if(pw1 == pw2){
			document.getElementById("lb1_pw2").innerHTML = "일치!!";
		} else {
			document.getElementById("lb1_pw2").innerHTML = "불일치!!";
			document.getElementById("pw1").value = "";
			document.getElementById("pw2").value = "";
			document.getElementById("pw1").focus();
		}
	}
	function chkData(){
		id = document.getElementById("id").value;
		pw1 = document.getElementById("pw1").value;
		pw2 = document.getElementById("pw2").value;
		name = document.getElementById("name").value;
		nick = document.getElementById("nick").value;
		mail = document.getElementById("mail").value;
		tel = document.getElementById("tel").value;
		quiz = document.getElementById("quiz").value;
		if( id == ""){
			alert("아이디는 필수 사항입니다.");
			location.href="register_view";
		} else if(pw1 == ""){
			alert("비밀번호는 필수 사항입니다.");
			location.href="register_view";
		} else if(pw2 == ""){
			alert("비밀번호 확인 는 필수 사항입니다.");
			location.href="register_view";
		} else if(name == ""){
			alert("이름은 필수 사항입니다.");
			location.href="register_view";
		} else if(nick == ""){
			alert("닉네임은 필수 사항입니다.");
			location.href="register_view";
		} else if(mail == ""){
			alert("메일은 필수 사항입니다.");
			location.href="register_view";
		} else if(tel == ""){
			alert("휴대폰번호는 필수 사항입니다.");
			location.href="register_view";
		} else if(quiz == ""){
			alert("힌트는 필수 사항입니다.");
			location.href="register_view";
		} else {
			fo.submit();
		}
	}
</script>
</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

	<div align="center">
	<form id="fo" action="register_save">
		<div>
		아래의 * 표시는 필수 정보 이오니 기입 바랍니다
		<table border="1">
			<tr>
				<th>아이디*</th><td><input type="text" name="id" id="id"></td>
			</tr>
			<tr>
				<th>비밀번호*</th><td><input type="text" name="pw" id="pw1"></td>
			</tr>
			<tr>
				<th>비밀번호 확인*</th>
				<td>
				<input type="text" name="pw2" id="pw2" onchange="pwchk()">
				<label id="lb1_pw2">(비밀번호 확인)</label>
				</td>
			</tr>
		</table>
		</div>
		
		<div>
		<table border="1">
			<tr>
				<th>이름*</th><td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<th>닉네임*</th><td><input type="text" name="nick" id="nick"></td>
			</tr>
			<tr>
				<th>E-mail*</th><td><input type="text" name="mail" id="mail"></td>
			</tr>
			<tr>
				<th>휴대폰번호*</th><td><input type="text" name="tel" id="tel"></td>
			</tr>
			<tr>
				<th>질문선택</th>
				<td>
				<select size="1" name="test" style="width:130px;height:20px;">
					<option value="p1" selected>아버지 성함
					<option value="p2">출신 초등학교
					<option value="p2">나의 별명
				</select>
				</td>
			</tr>
			<tr>
				<th>정답*</th><td><input type="text" name="quiz" id="quiz"></td>
			</tr>
		</table>
		</div>
		
		<div>
		<table border="1">
			<tr>
				<th>메일링서비스</th><td>
						<input type="checkbox" name="mservice" value="true">
						<label>정보 메일을 받겠습니다.</label>
						</td>
			</tr>
			<tr>
				<th>SMS 수신여부</th><td>
						<input type="checkbox" name="sms" value="true">
						<label>휴대폰 문자메세지 받겠습니다.</label>
						</td>
			</tr>
		</table>
		</div>
		<input type="button" value="회원가입" onclick="chkData();">
	</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>