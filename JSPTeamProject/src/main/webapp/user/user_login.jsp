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
		<form action="login_Form.user" method="post">
			<h3>중앙정보처리 인트라넷</h3>
			<input type="text" name="id" placeholder="아이디" ><br>
			<input type="password" name="pw" placeholder="비밀번호"><br>
			<br>
			${msg }
			<br>
			<input type="submit" value="로그인" class="btn btn-default">
			<br>
		</form>
	</div>
</section>
</body>
</html>