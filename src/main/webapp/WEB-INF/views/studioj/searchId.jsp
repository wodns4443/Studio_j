<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 | 스튜디오U</title>
</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

	<div align="center">
		<form action="checkId" method="post">
			회원가입 시 등록하신 전화번호를 입력해 주세요. <br>
			<input type="text" name="tel" placeholder="전화번호"><br>
			<input type="submit" value="확인">
			<input type="button" onclick="location.href='login'" value="취소">
		</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>