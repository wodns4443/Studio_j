<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 | 스튜디오U</title>


</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>


<div align="center">
	<div style="width:50%;text-align: center;">
			
			<div style="text-align: center;"><h2>${dto.title }</h2></div>
			
			<br>
			<div style="border-bottom:1px solid black; text-align: center;">작성자&nbsp;&nbsp; <b>${dto.name }</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${dto.savedate}" pattern="yyyy-MM-dd" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조회 ${dto.hit }회</div>
			
			<br>
			<br>
			
			<div style="text-align: center;">
			<textarea rows="30" cols="100" name="content" readonly="readonly" style="text-align:center; border-color: white; outline-style: none;">${dto.content }</textarea>
			</div>
			
			
			<div>
				<c:if test="${admin!=null }">
			
				<div style="width:50%; float:left; text-align: left">
					<%-- <button onclick="location.href='eventModify?num=${dto.num}'">수정</button> &nbsp;&nbsp; --%>
					<button onclick="location.href='eventModify?num=${dto.num}'">수정</button> &nbsp;&nbsp;
					<button onclick="location.href='eventDel?num=${dto.num}'">삭제</button>
				</div>
				</c:if>
				<div style="width:50%; float:right; text-align: right;">
					<button onclick="location.href='event'">목록으로</button>&nbsp;&nbsp;
					<button onclick="location.href='eventReplyView?num=${dto.num}'">답글달기</button>&nbsp;&nbsp;
				</div>
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
</div>
	

</body>
</html>