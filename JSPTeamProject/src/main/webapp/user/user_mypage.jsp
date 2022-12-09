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
		<a href="${pageContext.request.contextPath}/classboard/classboard_list.classboard">[반전용게시판]</a>
		<a href="${pageContext.request.contextPath}/JobBoard/JobBoard_list.jobboard">[취업게시판]</a>
		<a href="${pageContext.request.contextPath}/reqBoard/reqBoard_list.reqBoard">[건의사항]</a>
		<a href="">[HOME]</a>
		</div>
		<br>
		<br>
		<h2>
		${sessionScope.user_id }님 환영합니다.<br>
		</h2>
		<br>
		<h3>정보출력 <br></h3>
		이름: ${sessionScope.user_name} / 나이: ${sessionScope.user_age} / 성별: ${sessionScope.user_gender} / 클래스: ${sessionScope.user_classNo} / 담당 선생님 : ${sessionScope.user_teacher}
		
		
		<div>
		<a href="user_login.user">[로그아웃]</a>
		<a href="">[정보수정]</a>
		</div>
		
	</div>
</section>
</body>
</html>