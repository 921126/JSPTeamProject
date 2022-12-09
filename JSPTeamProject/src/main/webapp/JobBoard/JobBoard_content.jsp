<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div align="center" class="div_center">

	<h3>�Խñ� ���� ����</h3>
	<hr>
	<table border="1" width="500">
		<tr>
			<td width="20%">�۹�ȣ</td>
			<td width="30%">${vo.jno }</td>
			
			
		</tr>
		<tr>
			<td>�ۼ���</td>
			<td>${vo.id }</td>
			
			<td>�ۼ���</td>
			<td ><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd HH�� mm�� ss��"/></td>
		</tr>
		
		<tr>
			<td width="20%">������</td>
			<td colspan="3">${vo.title }</td>
		</tr>
		<tr>
			<td width="20%">�۳���</td>
			<td colspan="3" height="120px">${vo.content }</td>
		</tr>
		
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="���" onclick="location.href='JobBoard_list.jobboard'">&nbsp;&nbsp;
				
				<c:if test="${sessionScope.user_id != null }">
				<input type="button" value="����" onclick="location.href='JobBoard_modify.jobboard?jno=${vo.jno}&writer=${vo.id }' ">&nbsp;&nbsp;
				<input type="button" value="����" onclick="location.href='JobBoard_delete.jobboard?jno=${vo.jno}&writer=${vo.id }' ">&nbsp;&nbsp;
				</c:if>
			</td>
		</tr>
	</table>
	
	

</div>


</body>
</html>