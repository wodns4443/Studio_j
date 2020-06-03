<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기 | 스튜디오U</title>
</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

	<div align="center">
		<form action="login" method="get">
			아이디 : <input type="text" value="${id }"><br>
			비밀번호 : <input type="text" value="${pw }"><br>
			<input type="submit" value="로그인 이동">
		</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>