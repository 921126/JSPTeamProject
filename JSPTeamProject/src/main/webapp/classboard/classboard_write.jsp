<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>



<!-- �켱 �ٵ� �۾��ϱ� -->
<body>
	<!-- end header -->

	<div align="center" class="div_center">
		<h3>�Խ��� �� �ۼ� ������</h3>
		<hr>

		<form action="registForm.classboard" method="post">
			<table border="1" width="500">
				<tr>
					<td>�ۼ���</td>
					<td><input type="text" name="writer"
						value="${sessionScope.user_id}" size="10" readonly required>
					</td>
				</tr>
				<tr>
					<td>�� ����</td>
					<td><input type="text" name="title" required></td>
				</tr>
				<tr>
					<td>�� ����</td>
					<td><textarea rows="10" style="width: 95%;" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="�ۼ� �Ϸ�">
						&nbsp;&nbsp; <input type="button" value="���"
						onclick="location.href='classboard_list.classboard'"></td>
				</tr>

			</table>
		</form>

	</div>




	<!-- footer -->
	<!-- /footer -->
</body>

</html>