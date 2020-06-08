<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 | 스튜디오U</title>
</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

	<div align="center">
		<form action="checkPw" method="post">
			등록된 아이디 입력해 주세요. <br>
			<input type="text" name="id" placeholder="아이디"><br>
			회원가입 시 등록하신 힌트를 입력해 주세요. <br>
			<select size="1" name="quiz" style="width:200px;height:20px;">
				<option value="아버지 성함" selected>아버지 성함
				<option value="출신 초등학교">출신 초등학교
				<option value="나의 별명">나의 별명
			</select><br>
			<input type="text" name="reply" style="width:200px;height:20px;"><br>
			<input type="submit" value="확인">
			<input type="button" onclick="location.href='login'" value="취소">
		</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>