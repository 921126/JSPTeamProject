<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중앙정보처리학원 인트라넷</title>
<style>
	body{background-image:url('../img/01_bg.png');
	}
</style>
</head>
<body>
	<section>
		<div class="main" align="center">
			<form action="login_Form.user" method="post">
				<br><br><br>
				<h1 class="main_text">중앙정보처리 인트라넷</h1>
				<input type="text" name="id" placeholder="아이디"><br> 
				<input type="password" name="pw" placeholder="비밀번호"><br>
				<br>
				${msg } 
				<br> 
				<input type="submit" value="로그인" class="btn btn-default"> <br>
			</form>
		</div>
	</section>
</body>
</html>