<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MemberSearch.jsp</title>
</head>
<body>
	<h3> ȸ�������˻� </h3>
	<form action="MemberSearch.do" method="post">
		ID : <input type="text" name="id"><br>
		<input type="hidden" name="job" value="search">
		<input type="submit" value="��ȸ">
	</form>

</body>
</html>