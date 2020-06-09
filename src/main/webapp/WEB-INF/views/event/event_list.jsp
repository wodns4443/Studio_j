<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj04.css">

<style type="text/css">


	.bodywrap_header { position: static; }
    .bo_list_wrap { width: 1024px; margin: 0 auto; padding: 100px 0; min-height:400px;}
    #container_title { font-size: 2.3em; padding-bottom: 40px; font-family: 'Gothic'; }


</style>

</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<div class="bo_list_wrap" align="center">
	<h2 id="container_title">EVENT</h2>
	<div class="tbl_head01 tbl_wrap">
		<table>
		
		<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>조회</th>
		</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${elist }" var= "dto">
		<tr class="">
			<td class="td_num">${dto.num}</td>
			<td class="td_subject"><a href="eventContent?num=${dto.num}">${dto.title}</a></td>
			<td class="td_name sv_use"><span class="sv_member">스튜디오U</span></td>
			<td class="td_date"><fmt:formatDate value="${dto.savedate}" pattern="MM-dd" /></td>
			<td class="td_num">${dto.hit}</td>
		</tr>
		</c:forEach>
		</tbody>
		
		</table>
	</div>
	
	<div class="board_button">
	<c:if test="${admin !=null }">
		<div style ="float:right;">
			<a href="event_write">
			<img src="${pageContext.request.contextPath}/resources/image/studioAll/btn_write.gif" border="0">
			</a>
		</div>
	</c:if>
	</div>
	
	<!-- 페이징 -->
	<div class="board_page">
			<nav class="pg_wrap">
				<c:choose>
				<c:when test="${pager.prev }">
					<a href="event?currentBlock=${pager.currentblock-1 }" class="pg_page">이전</a> 
				</c:when>
				<c:otherwise>
					<a disabled="disabled" class="pg_page" style="display: none;">이전</a> 
				</c:otherwise>
				</c:choose> 
				
				
				<!-- 번호 -->
				<c:forEach begin="${pager.startPage }" end="${pager.endPage }" step="1" var="cnt">
				<c:choose>
					<c:when test="${pager.pagenum == cnt }">
						<strong class="pg_current">${cnt }</strong>

					</c:when>
					<c:otherwise>
						<a href="event?page=${cnt }" class="pg_page">${cnt }</a>
					</c:otherwise>
				
				</c:choose>
				</c:forEach>
				<!-- 번호 끝 -->
				
				 <c:choose>
				<c:when test="${pager.next }">
					<a href="event?currentBlock=${pager.currentblock+1 }" class="pg_page" >다음</a>
				</c:when>
				<c:otherwise>
					<a disabled="disabled" class="pg_page" style="display: none;">다음</a>
				</c:otherwise>
				</c:choose> 
			</nav>
	</div>
	
</div>

<c:import url="../default/footer.jsp"/>

</body>
</html>