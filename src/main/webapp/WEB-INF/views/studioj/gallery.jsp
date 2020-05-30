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

gallery라능!!!
	<form action="upload" method="post" enctype="multipart/form-data">
	    <input type="file" name="file"/>
	    <input type="submit" value="업로드"/>
	</form>
<c:import url="../default/footer.jsp"/>
</body>
</html>