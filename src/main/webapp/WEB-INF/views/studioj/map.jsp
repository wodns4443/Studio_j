<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지점 안내 | 스튜디오U</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj02.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/studioj03.css">

<style type="text/css">

	.bodywrap_header { position: static; }

	.branch_title { padding-top: 150px; text-align: center; }
	.branch_list_area { padding-bottom: 50px; }
	.branch_list_tab { text-align: center; padding: 70px 0 30px;; }
	.branch_list_tab li { display: inline-block; font-size: 20px; font-family: 'Noto Sans KR', 'Nanum Gothic', dotum, sans-serif; cursor: pointer; letter-spacing: -1px; }
	.branch_list_tab li.list_select { font-weight: bold; }
	.list_line { color: #ddd; padding: 0 25px; }
	.branch_list_list { padding-top: 30px; }

	.gangnam_branch { overflow: hidden; padding: 0 50px 150px 70px; }
	.gangnam_branch > div { float: left; }
	.gangnam_info { width: 38%; }
	.mapu { width: 62%; }
	.gangnam_address, .gangnam_customer_center { padding-bottom: 50px; }
	.address_info { line-height: 20px; padding: 5px 30px 0; font-size: 14px; font-family: 'Noto Sans KR'; }
	.address_link { font-family: 'Noto Sans KR'; text-decoration: underline !important; }
	.customer_number, .customer_mail { padding: 5px 30px 0; }
	.chunan_branch .gangnam_address { padding-bottom: 30px; }

	.gangbuk_branch, .songpa_branch, .chunan_branch { overflow: hidden; padding: 0 50px 150px 70px; display: none; }
	.gangbuk_branch > div, .songpa_branch > div, .chunan_branch > div { float: left; }

	.mapu img { width: 100%; }

</style>

</head>
<body>
<c:import url="../default/header.jsp"/>
<%-- <c:import url="../default/header2.jsp"/> --%>

<div id="bodywrap_studio">
	
	<div class="maincontent">
		
		<div class="branch_title">
			<img src="${pageContext.request.contextPath}/resources/image/locations_branch.png">
		</div>
		
		<div class="branch_list_area">
			<div class="branch_list_tab">
				<ul>
					<li class="branch_songpa branch_list">종로점</li>
				</ul>
			</div>
			
			<div class="branch_list_list">
			<!-- 종로지점 -->
				<div class="songpa_branch" style="display: block;">
						<!-- left info -->
					<div class="gangnam_info">
						<div class="gangnam_address">
							<div class="address_title"><img src="${pageContext.request.contextPath}/resources/image/addr.png" alt="주소"></div>
							<div class="address_info">
								<strong>바디프로필 스튜디오U 종로점</strong><br>
								: 서울특별시 종로구 돈화문로 26,4층(묘동,단성사)<br>
								&nbsp;&nbsp;3호선 종로3가역 [9번 출구] 단성사 빌딩 4층<br>
							</div>
						</div>
						<div class="gangnam_customer_center">
							<div><img src="${pageContext.request.contextPath}/resources/image/callcenter.png" alt="고객센터1"></div>
							<div class="customer_number"><img src="${pageContext.request.contextPath}/resources/image/studioAll/call_number.png" alt="고객센터2"></div>
						</div>
						<div class="customer_email">
							<div><img src="${pageContext.request.contextPath}/resources/image/mail.png" alt="이메일1"></div>
							<div class="customer_mail"><img src="${pageContext.request.contextPath}/resources/image/studioAll/map_mail.png" alt="이메일2"></div>
						</div>
					</div>
					<!-- gmap -->
					<div class="mapu">
						<div id="map"><img src="${pageContext.request.contextPath}/resources/image/studioAll/map1.png" alt="지도"></div>
					</div>
				</div>
			<!-- 종로지점 -->
			</div>
		</div>
		
	</div>
	
</div>


<c:import url="../default/footer.jsp"/>
</body>
</html>