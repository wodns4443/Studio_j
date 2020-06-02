<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

	<div align="center">
	<form action="user_check" method="post">
			<input type="text" name="id" placeholder="아이디"><br>
			<input type="text" name="pw" placeholder="비밀번호"><br>
			<input type="submit" value="로그인"style="width:130px;height:70px;"><br>
			<input type="button" value="회원가입" onclick="location.href='register'">
			<input type="button" value="아이디,비밀번호 찾기" onclick="location.href='searchId'">
	</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>