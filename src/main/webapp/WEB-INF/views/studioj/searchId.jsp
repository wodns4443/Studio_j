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
		<form action="search" method="post">
			회원가입 시 등록하신 힌트를 입력해 주세요. <br>
			<select size="1" name="test" style="width:200px;height:20px;">
				<option value="p1" selected>아버지 성함
				<option value="p2">출신 초등학교
				<option value="p2">나의 별명
			</select><br>
			<input type="text" name="quiz" style="width:200px;height:20px;"><br>
			<input type="submit" value="확인">
		</form>
	</div>
<c:import url="../default/footer.jsp"/>
</body>
</html>