<%@page import="com.dev.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MemberUpdate.jsp</title>
</head>
<body>
	<form action="MemberSearch.do" method="post">
		ID : <input type="text" name="id">
		<input type="hidden" name="job" value="update">
		<input type="submit" value="��ȸ">
	</form>
	
	<%
		MemberVO member = (MemberVO) request.getAttribute("member");
		if(member != null){
			// �Է�ȭ��...
			%>
			<form action="MemberUpdate.do" method="post">
			���̵� : <input type="text" name="id" value="<%=member.getId()%>" readonly/><br>
			��й�ȣ : <input type="password" name="passwd" value="<%=member.getPasswd() %>"><br>
			�̸� : <input type="text" name="name" value="<%=member.getName()%>"><br>
			���� : <input type="email" name="mail" value="<%=member.getMail()%>"><br>
			<input type="submit" value="����">
			</form>
			<%
		} else {
			// ��ȸ�� ��� X;
			%>
			<h3>��ȸ��� �����ϴ�.</h3>
			<%
		}
	%>
</body>
</html>