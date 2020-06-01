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
<table style="width:50%;text-align: center;">
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
			
		</table>
				<c:if test="${admin!=null }">
				<div style="width:35%;text-align:left;">
					<button onclick="location.href='eventModify?num=${dto.num}'">수정</button> &nbsp;&nbsp;
					<button onclick="location.href='eventDel?num=${dto.num}'">삭제</button>
				</div>
				</c:if>
			<div style="width:35%; text-align: right;">
				<button onclick="location.href='event'">목록으로</button>&nbsp;&nbsp;
				<button onclick="location.href='eventReplyView?num=${dto.num}'">답글달기</button>&nbsp;&nbsp;
			</div>
		
			<hr style="width:50%;">
		
		<table style="width:50%;text-align: center;">
		<c:forEach items="${relist }" var = "redto">
		<tr>
			<td style="background-color: #EAEAEA;">${redto.name }</td>
			<td><textarea style="border:none;"rows="3" cols="100" readonly="readonly">${redto.content }</textarea></td>
		<c:if test="${redto.name.equals(userId) || admin!=null}">
			<td style="width:20%;"><button onclick="location.href='eReplyDel?num=${redto.num}&&idgroup=${redto.idgroup }'">삭제</button></td>
		</c:if>
		</tr>
		</c:forEach>
	</table>
			
			
			
	</div>
	

</body>
</html>