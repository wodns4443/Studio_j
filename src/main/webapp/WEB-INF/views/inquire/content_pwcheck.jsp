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

<div align="center">
	<form action="inquirepwcheck" method="post">
		<input type="hidden" name = "num" value="${num }">
		비밀번호 : <input type= "text" name ="pw"><br>
		<input type ="submit" value="확인">
	</form>
	 
</div>


</body>
</html>