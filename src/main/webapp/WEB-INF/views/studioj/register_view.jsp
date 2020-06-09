<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

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
		mail = document.getElementById("mail").value;
		tel = document.getElementById("tel").value;
		reply = document.getElementById("reply").value;
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
		} else if(mail == ""){
			alert("메일은 필수 사항입니다.");
			location.href="register_view";
		} else if(tel == ""){
			alert("휴대폰번호는 필수 사항입니다.");
			location.href="register_view";
		} else if(reply == ""){
			alert("질문정답은 필수 사항입니다.");
			location.href="register_view";
		} else {
			fo.submit();
		}
	}
</script>

<style type="text/css">
	.bodywrap_header { position: static; }
    .mbskin { padding: 70px 100px; width: 600px; margin: 0 auto; }
</style>

</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<div class="bodywrap_studio">
	<div class="mbskin">
		<form id="fo" action="register_save">
		<div style="color: #888; font-size: 12px; padding-bottom: 5px; text-align: left;">아래의 * 표시는 필수 정보 이오니 기입 바랍니다</div>
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<caption>사이트 이용정보 입력</caption>
				<tbody>
					<tr>
						<th>아이디*</th>
						<td><input type="text" name="id" id="id" class="frm_input required "></td>
					</tr>
					<tr>
						<th>비밀번호*</th>
						<td><input type="text" name="pw" id="pw1" class="frm_input required "></td>
					</tr>
					<tr>
						<th>비밀번호 확인*</th>
						<td>
						<input type="text" name="pw2" id="pw2" onchange="pwchk()" class="frm_input required ">
						<label id="lb1_pw2">(비밀번호 확인)</label>
						</td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<caption>개인정보 입력</caption>
				<tbody>
					<tr>
						<th>이름*</th>
						<td><input type="text" name="name" id="name" class="frm_input required "></td>
					</tr>
					<tr>
						<th>E-mail*</th>
						<td><input type="text" name="mail" id="mail" class="frm_input required "></td>
					</tr>
					<tr>
						<th>휴대폰번호*</th>
						<td><input type="text" name="tel" id="tel" class="frm_input required "></td>
					</tr>
					<tr>
						<th>질문선택</th>
						<td>
						<select size="1" name="quiz" style="width:215px;height:40px;">
							<option value="아버지 성함" selected>아버지 성함
							<option value="출신 초등학교">출신 초등학교
							<option value="나의 별명">나의 별명
						</select>
						</td>
					</tr>
					<tr>
						<th>정답*</th>
						<td><input type="text" name="reply" id="reply" class="frm_input required "></td>
					</tr>
				</tbody>
				</table>
			</div>
			<div class="tbl_frm01 tbl_wrap">
				<table>
				<caption>기타 개인설정</caption>
				<tbody>
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
				</tbody>
				</table>
			</div>
			<div class="btn_confirm">
				<input type="button" value="회원가입" onclick="chkData();" class="btn_submit">
				<a href="index" class="btn_cancel">취소</a>
			</div>
		</form>
	</div>
</div>

<c:import url="../default/footer.jsp"/>

</body>
</html>
