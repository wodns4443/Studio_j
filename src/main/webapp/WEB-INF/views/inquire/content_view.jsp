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
				<td>${dto.title }</td>
			</tr>
			<tr>
				<td style="background-color: #EAEAEA;">내용</td>
				<td><textarea rows="30" cols="100" name="content" readonly="readonly">${dto.content }</textarea></textarea>
			</tr>
			<tr>
				<td colspan = "2">
				<c:if test="${userId== dto.name}">
				<div style="text-align:left;">
					<button onclick="location.href='inquireModify?num=${dto.num}'">수정</button> &nbsp;&nbsp;
					<button onclick="location.href='inquireDel?num=${dto.num}'">삭제</button>
				</div>
				</c:if>
				<c:if test="${admin!=null }">
				<div style="text-align:left;">
					<button onclick="location.href='inquireDel?num=${dto.num}'">삭제</button>
				</div>
				</c:if>
				
				<div style="text-align:right;">
				<button onclick="location.href='inquire'">목록으로</button>&nbsp;&nbsp;
				<button onclick="location.href='replyView?num=${dto.num}'">답글달기</button>&nbsp;&nbsp;
				</div>
				</td>
			</tr>
		</table>
		
		<hr style="width:50%;">
	<table style="width:45%;text-align: center;">
		<c:forEach items="${relist }" var = "redto">
		<tr>
			<td style="background-color: #EAEAEA;">${redto.name }</td>
			<td><textarea style="border:none;"rows="3" cols="100" readonly="readonly">${redto.content }</textarea></td>
		<c:if test="${redto.name.equals(userId) || admin!=null}">
			<td style="width:20%;"><button onclick="location.href='replyDel?num=${redto.num}&&idgroup=${redto.idgroup }'">삭제</button></td>
		</c:if>
		</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>