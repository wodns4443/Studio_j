<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 | 스튜디오U</title>
</head>
<body>
<c:import url="../default/header.jsp"/>
	<c:import url="../default/header2.jsp"/>
	
	<div align="center">
		<h2>회원정보</h2>
		<form action="upData" method="get">
			<table>
			<tr>
				<th>아이디</th><td><input type="text" name="id" value="${dto.id }" readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th><td><input type="text" name="pw" value="${dto.pw }"></td>
			</tr>
			<tr>
				<th>이름</th><td><input type="text" name="name" value="${dto.name }"></td>
			</tr>
			<tr>
				<th>전화번호</th><td><input type="text" name="tel" value="${dto.tel }"></td>
			</tr>
			<tr>
				<th>메일</th><td><input type="text" name="mail" value="${dto.mail }"></td>
			</tr>
			</table>
			<input type="submit" value="수정"><input type="button" value="삭제" onclick="location.href='delete?id=${dto.id}'">
		</form>
	</div>
	
<c:import url="../default/footer.jsp"/>

</body>
</html>