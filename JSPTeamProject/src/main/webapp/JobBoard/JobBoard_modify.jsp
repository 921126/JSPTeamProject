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
	<!-- �����ڸ� �� ���� ���� teacher�÷��� ���� null�̶�� ���� �����ϰԲ� ����� -->
	<h3>����Խ��� �� ���� ������</h3>
	<hr>
	
	<form action="updateForm.jobboard" method="post">
		
		<table border="1" width="500">
			
			<tr>
				<td>�� ��ȣ</td>
				<td>${vo.bno }
					
					<!-- hidden�� ���� �� ���̴� input�±��̴�. 
					ȭ�鿡 ���� �ʿ�� ���µ� �����Ͱ� �ݵ�� ���۵Ǿ���� �� ����Ѵ�. -->
					
					<input type="hidden" name="bno" value="${vo.bno }">
				</td>
			</tr>
			<tr>
				<td>�ۼ���</td>
				<td><input type="text" name="writer" value="${vo.writer }" readonly></td>
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
					<input type="button" value="���" onclick="location.href='board_list.board'">        
				</td>
			</tr>
			
		</table>
	</form>
	
</div>

</body>
</html>