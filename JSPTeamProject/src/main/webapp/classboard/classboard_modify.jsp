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
	<h3>�Խ��� �� ���� ������</h3>
	<hr>
	
	<form action="updateForm.classboard" method="post">
		
		<table border="1" width="500">
			
			<%--ȭ�鿡 ���� �ʿ�� ���µ�, �����͸� ������ �ϴ� ��� hidden �±׸� ����մϴ�. --%>
			
			<tr>
				<td>�� ��ȣ</td>
				<td>${vo.bno }
					<input type="hidden" name="cbno" value="${vo.cbno}">
				</td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><input type="text" name="writer" value="${vo.id}" readonly></td>
			</tr>
			<tr>
				<td>�� ����</td>
				<td>
					<input type="text" name="title" value="${vo.title }">
				</td>
			</tr>
			<tr>
				<td>�� ����</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content">${vo.content }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="���� �ϱ�" onclick="">&nbsp;&nbsp;
					<input type="button" value="���" onclick="location.href='classboard_list.classboard'">        
				</td>
			</tr>
			
		</table>
	</form>
	
</div>

</body>
</html>