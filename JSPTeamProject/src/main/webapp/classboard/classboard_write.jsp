<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>



<!-- 우선 바디만 작업하기 -->
<body>
	<!-- end header -->

	<div align="center" class="div_center">
		<h3>게시판 글 작성 페이지</h3>
		<hr>

		<form action="registForm.classboard" method="post">
			<table border="1" width="500">
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer"
						value="${sessionScope.user_id}" size="10" readonly required>
					</td>
				</tr>
				<tr>
					<td>글 제목</td>
					<td><input type="text" name="title" required></td>
				</tr>
				<tr>
					<td>글 내용</td>
					<td><textarea rows="10" style="width: 95%;" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="작성 완료">
						&nbsp;&nbsp; <input type="button" value="목록"
						onclick="location.href='classboard_list.classboard'"></td>
				</tr>

			</table>
		</form>

	</div>




	<!-- footer -->
	<!-- /footer -->
</body>

</html>