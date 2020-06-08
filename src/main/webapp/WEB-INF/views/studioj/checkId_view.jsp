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
		<form action="login" method="get">
			아이디 : <input type="text" value="${id }"><br>
			<input type="submit" value="로그인 이동">
			<input type="button" onclick="location.href='searchPw'" value="비밀번호 찾기">
		</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>