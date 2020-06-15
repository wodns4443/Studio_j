<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

</head>
<body>
<c:import url="../default/header.jsp"/>
<%-- <c:import url="../default/header2.jsp"/> --%>
<div style="margin:100px;"></div>

<div id="mb_login" class="mbskin">

	<div class="login_logo">
		<a href="index">
		<img src="${pageContext.request.contextPath}/resources/image/login_log.png" style="width: 120px; height: 55px;">
		</a>
	</div>
	<form action="user_check" method="post">
		<fieldset id="login_fs">
			<input type="text" name="id" placeholder="아이디" class="frm_input required" size="20" maxlength="20"><br>
			<input type="password" name="pw" placeholder="비밀번호" class="frm_input required" size="20" maxlength="20"><br>
			<input type="submit" value="로그인" class="btn_submit" ><br>
			<div class="login_info">
			<div class="login_member_enter"><a href="register">회원 가입</a></div>
			<div>|</div>
			<div class="login_member_text"><a href="searchId">아이디 찾기</a></div>
			<div>|</div>
			<div class="login_member_text"><a href="searchPw">비밀번호 찾기</a></div>
			</div>
		</fieldset>
	</form>
	
	
</div>

<c:import url="../default/footer.jsp"/>
</body>
</html>