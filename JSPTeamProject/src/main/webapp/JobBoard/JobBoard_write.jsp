<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center" class="div_center">
	<!-- �� �ۼ��� �����ڸ� ����, �л��� �б��ɸ� �߰��ؼ� �б⸸ �����ϰ� �����ؾ��� -->
	<h3>����Խ��� �� �ۼ� ������</h3>
	<hr>
	
	<form action="registForm.jobboard" method="post">
		<table border="1" width="500">
			<tr>
				<td>�ۼ���</td>
				<td>
					<input type="text" name="writer" value="" size="10">
				</td>
			</tr>
			<tr>
				<td>�� ����</td>
				<td>
					<input type="text" name="title" required>
				</td>
			</tr>
			<tr>
				<td>�� ����</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="�ۼ� �Ϸ�" onclick="location.href='JobBoard_list.jobboard'">
					&nbsp;&nbsp;
					<input type="button" value="���" onclick="location.href='JobBoard_list.jobboard'">         
				</td>
			</tr>
			
		</table>
	</form>
	
</div>
	

</body>
</html>