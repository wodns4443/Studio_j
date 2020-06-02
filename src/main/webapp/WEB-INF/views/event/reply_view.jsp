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
<h3>답글 달기</h3>
	<form action="eventReply" method ="post">
	<input type="hidden" name="num" value="${dto.num }">
	<input type="hidden" name="idgroup" value="${dto.idgroup }">
	<input type="hidden" name="step" value="${dto.step }">
	<input type="hidden" name="indent" value="${dto.indent }">
	<table style="width:40%;">
		<tr>
			<td style="background-color: #EAEAEA;">이름</td>
			<td><input style="border=none;"type="text" name="name" value="${userId }" readOnly></td>
		</tr>
		<tr>
			<td style="background-color: #EAEAEA;">내용</td>
			<td><textarea rows="6" cols="100" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
			<input type="button" onclick="location.href='eventContent?num=${dto.num}'" value = "취소">&nbsp;&nbsp;
			<input type="submit" value="작성 완료">
			</td>
		</tr>
		
	</table>
	</form>
	
</div>




</body>
</html>