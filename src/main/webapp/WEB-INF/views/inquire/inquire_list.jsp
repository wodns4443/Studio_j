<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

<style type="text/css">

.board_top { clear:both; }

.board_list { clear:both; width:100%; table-layout:fixed; margin:5px 0 0 0; }
.board_list th { font-weight:bold; font-size:12px; } 
.board_list th { background:url(/skin/board/studioReserve/img/title_bg.gif) repeat-x; } 
.board_list th { white-space:nowrap; height:34px; overflow:hidden; text-align:center; } 
.board_list th { border-top:1px solid #ddd; border-bottom:1px solid #ddd; } 

.board_list tr.bg0 { background-color:#fafafa; } 
.board_list tr.bg1 { background-color:#ffffff; } 

.board_list td { padding:.5em; }
.board_list td { border-bottom:1px solid #ddd; } 
.board_list td.num { color:#999999; text-align:center; }
.board_list td.checkbox { text-align:center; }
.board_list td.subject { overflow:hidden; }
.board_list td.name { /*padding:0 0 0 10px;*/ text-align: center; }
.board_list td.datetime { font:normal 11px tahoma; color:#BABABA; text-align:center; }
.board_list td.hit { font:normal 11px tahoma; color:#BABABA; text-align:center; }
.board_list td.good { font:normal 11px tahoma; color:#BABABA; text-align:center; }
.board_list td.nogood { font:normal 11px tahoma; color:#BABABA; text-align:center; }

.board_list .notice { font-weight:normal; }
.board_list .current { font:bold 11px tahoma; color:#E15916; }
.board_list .comment { font-family:Tahoma; font-size:10px; color:#EE5A00; }

.board_button { clear:both; margin:10px 0 0 0; }

.board_page { clear:both; text-align:center; margin:3px 0 0 0; }
.board_page a:link { color:#777; }

.board_search { text-align:center; margin:10px 0 0 0; }
.board_search .stx { height:21px; border:1px solid #9A9A9A; border-right:1px solid #D8D8D8; border-bottom:1px solid #D8D8D8; }
.bodywrap_header { position: static; }


</style>

</head>
<body>
<c:import url="../default/header.jsp"/>
<c:import url="../default/header2.jsp"/>

<div >
	<table width="100%" align="center" cellpadding="0" cellspacing="0" style="margin: 150px auto; width: 1000px;">
	<tbody>
		<tr>
		<td>
			<div class="board_top">
				<div style ="float:right;">
				<span style="color:#888888; font-weight:bold;">TOTAL ${totContent }</span>
				</div>
			</div>
			<table cellpadding="0" cellspacing="0" class="board_list">
			<colgroup>
			<col width="50">
			<col>
			<col width="110">
			<!--<col width="50" />-->
			<col width="50">
			</colgroup>
			<tbody>
				<tr>
				<th>번호</th><th>제&nbsp;&nbsp;&nbsp;목</th><th>글쓴이</th><th>조회</th>
				</tr>
				<c:forEach items="${ilist }" var = "dto">
				
				<tr>
					<td class="num">${dto.num}</td>
					<td class="subject"><a href="content_pwcheck?num=${dto.num}">${dto.title}</a></td>
					<td class="name">${dto.name}</td>
					<td class="hit">${dto.hit}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
			
			<div class="board_button">
				<div style ="float:right;">
					<a href="write_view">
					<img src="${pageContext.request.contextPath}/resources/image/studioAll/btn_write.gif" border="0">
					</a>
				</div>
			</div>
			
			<div class="board_page">
			<nav class="pg_wrap">
				<c:choose>
				<c:when test="${page >1 }">
					<%-- <button type="button" onclick="location.href='inquire?page=${page-1 }'">이전</button> --%>
					<a href="inquire?page=${page-1 }" class="pg_page">이전</a>
				</c:when>
				<c:otherwise>
					<a disabled="disabled" class="pg_page">이전</a>
					<!-- <button type="button" disabled="disabled">이전</button> -->
				</c:otherwise>
				</c:choose>
				<c:forEach begin="1" end="${totPage }" step="1" var="cnt">
				<a href="inquire?page=${cnt }" class="pg_page">${cnt }</a>
				<%-- <strong class="pg_current">${cnt }</strong> --%>
				</c:forEach>
				<c:choose>
				<c:when test="${page <totPage }">
					<%-- <button type = "button" onclick="location.href='inquire?page=${page+1}'">다음</button> --%>
					<a href="inquire?page=${page+1}" class="pg_page">다음</a>
				</c:when>
				<c:otherwise>
					<!-- <button type="button" disabled="disabled">다음</button> -->
					<a disabled="disabled" class="pg_page">다음</a>
				</c:otherwise>
				</c:choose>
			</nav>
			</div>
			
			<div class="board_search" style="width:100%">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
					<tr>
					<td align="center">
					
					<table border="0" cellpadding="0" cellspacing="0">
						<tbody>
						<tr>
						<form action="inquiresearch" method="post">
							<td>
							<select name="searchType" style="height:23px">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="name">작성자</option>
							</select>
							</td>
							<td>&nbsp;</td>
							<td><input type="text" name="searchValue" class="stx"></td>
							<td>&nbsp;</td>
							<td>
							<input type="submit" border="0" align="absmiddle" value="검색" 
							style="padding: 4px 7px; color: #fff; background-color: #494848; border: 1px solid #494848; border-radius: 3px;">
							</td>
						</form>
						</tr>
						</tbody>
					</table>
					
					</td>
					</tr>
				</tbody>
			</table>
			</div>
			
		</td>
		</tr>
	</tbody>
	</table>
	<br>
</div>

<c:import url="../default/footer.jsp"/>

</body>
</html>