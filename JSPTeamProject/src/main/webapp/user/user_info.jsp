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
			<h3>회원정보 수정</h3>
			<form action="">
				<table>
				
					<tr>
						<td>아이디 : </td>
						<td>${vo.id }</td>
						<td><input type="text" name="id" value="${vo.id }" ></td>
					</tr>
					
					<tr>
						<td>비밀번호 : </td>
						<td>${vo.pw }</td>
						<td><input type="password" name="pw" placeholder="비밀번호를 수정하세요."></td>
					</tr>
					
					<tr>
						<td>이름 : </td>
						<td>${vo.name }</td>
						<td><input type="text" name="name" value="${vo.name }" pattern="[가-힣]"></td>
					</tr>
					
					<tr>
						<td>나이 : </td>
						<td>${vo.age }</td>
						<td><input type="text" name="age" value="${vo.age }" pattern="[1-9]"></td>
					</tr>
					
					<tr>
						<td>반 번호 : </td>
						<td>${classNo }</td>
						<td><input type="text" name="classNo" value="${vo.classNo }"></td>
					</tr>
					
				</table>
				
					<input type="submit" value="정보수정">
					<input type="button" value="마이페이지" onclick="location.href='user_mypage.user'">
			</form>
		</div>
	</section>

</body>
</html>