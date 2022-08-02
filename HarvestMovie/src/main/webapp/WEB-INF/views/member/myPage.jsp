<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/sidebar.css"	rel="stylesheet">
<meta charset="UTF-8">
<title>마이페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- Bootstrap -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member.css"	type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/member.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<jsp:include page="/WEB-INF/views/member/common/mypage_header.jsp" />
	<div class="container-fluid">
		<div class="row flex-nowrap">
			<jsp:include page="/WEB-INF/views/member/common/mypage_sidebar.jsp" />
			<!-- 메인 div -->
			<div class="col-9 bd-content">
				<br>
				<h2>내 정보</h2>
				<div class="col-9">
				<table class="table" class="col-7">
					<tbody>
						<tr>
							<th scope="row">사진</th>
							<td colspan="2">    
							<c:if test="${!empty user_num && !empty user_photo}">
								<img src="${pageContext.request.contextPath}/upload/${user_photo}" 
										width="100" height="100" class="my-photo rounded-circle"><br>
							</c:if>

							<c:if test="${!empty user_num && empty user_photo}">
								<img src="${pageContext.request.contextPath}/images/face.png" 
										width="100" height="100" class="my-photo rounded-circle"><br>
							</c:if>
							<div class="row">
								<div class="col-6 pr-0">
									<input class="form-control mt-2 mb-2" type="file" id="photo" accept="image/gif,image/png,image/jpeg">
								</div>
								<div class="col-3 pt-2">
									<button type="button" id="photo_submit" class="btn btn-primary">등록</button>
								</div>
							</div>
							</td>
						</tr>
						<tr>
							<th scope="row">이름</th>
							<td colspan="2">${user_name}</td>
						</tr>
						<tr>
							<th scope="row">비밀번호</th>
							<td>●●●●●●</td>
							<td><a href="${pageContext.request.contextPath}/member/modifyPasswordForm.do">
							<button type="button" id="pw_update" class="btn btn-primary">비밀번호 수정</button>
							</a></td>
						</tr>
						<tr>
							<th scope="row">이메일</th>
							<td colspan="2">${user_email}</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td colspan="2">(${user_zip})${user_addr1} ${user_addr2}</td>
						</tr>
					</tbody>
				</table>
				</div>
				
				<div class="mt-3">
				<h2 class="ma-3">내가 남긴 리뷰</h2>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">First</th>
							<th scope="col">Last</th>
							<th scope="col">Handle</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>@mdo</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Jacob</td>
							<td>Thornton</td>
							<td>@fat</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2">Larry the Bird</td>
							<td>@twitter</td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>