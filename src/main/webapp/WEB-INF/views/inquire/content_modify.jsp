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
	<form action="inquireModifySave" method="post">
	<input type="hidden" name="num" value="${dto.num }">
	<table style="width:45%;text-align: center;">
			<tr>
				<td style="width:10%;background-color: #EAEAEA;">이름</td>
				<td>${dto.name }</td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">이메일</td>
				<td>${dto.email }</td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">연락처</td>
				<td>${dto.tel }</td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">제목</td>
				<td><input type="text" name="title" value="${dto.title }"></td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">내용</td>
				<td><textarea rows="30" cols="100" name="content" >${dto.content }</textarea>
			</tr>
			<tr>
			<td colspan="2" style="text-align: center;">
				<input type="button" onclick="location.href='inquire'" value="취소">&nbsp;&nbsp;
				<input type ="submit" value="수정">
			</td>
			</tr>

</table>
</form>
</div>



</body>
</html>