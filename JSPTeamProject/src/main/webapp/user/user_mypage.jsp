<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
	<div align="center">
		<div>
		<a href="${pageContext.request.contextPath}/shareboard/shareboard_list.sb">[공용게시판]</a>
		<a href="">[반전용게시판]</a>
		<a href="${pageContext.request.contextPath}/JobBoard/JobBoard_list.jobboard">[취업게시판]</a>
		<a href="">[건의사항]</a>
		<a href="">[HOME]</a>
		</div>
		<br>
		<br>
		${sessionScope.user_id }
		(${sessionScope.user_name})님 환영합니다.<br>
		
		<div>
		<a href="user_login.user">[로그아웃]</a>
		<a href="">[정보수정]</a>
		</div>
		
	</div>
</section>
</body>
</html>