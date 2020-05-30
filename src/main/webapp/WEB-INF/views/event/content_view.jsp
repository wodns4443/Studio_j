<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../default/header.jsp"/>

<div align="center">
<table style="width:45%;text-align: center;">
			<tr>
				<td colspan="3"><b>${dto.title }</b></td>
			</tr>
			<tr>
				<td>작성자 <b>${dto.name }</b></td>
				<td><fmt:formatDate value="${dto.savedate}" pattern="yyyy-MM-dd" /></td>
				<td>조회 ${dto.hit }회</td>
			</tr>
			
			<tr>
				<td colspan="3"><textarea rows="30" cols="100" name="content" readonly="readonly">${dto.content }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:right;">
				<button onclick="location.href='event'">목록으로</button>&nbsp;&nbsp;
				<button onclick="location.href='replyView?num=${dto.num}'">답글달기</button>&nbsp;&nbsp;
		
				</td>
			</tr>
		</table>
		
	</div>
	

</body>
</html>