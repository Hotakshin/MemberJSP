<%@page import="com.dev.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>result/MemberListOutput.jsp</title>
</head>
<body>
	<c:choose>
		<c:when test ="${empty list }">
			<p>조회결과 없음.</p>
		</c:when>
		<c:otherwise>
		<ul>
			<c:forEach items="${list }" var="member">
				<li>${member.id } - ${member.name } - ${member.mail }</li>
			</c:forEach>
		</ul>
		</c:otherwise>
	</c:choose>








<%--
	List<MemberVO> list = (List<MemberVO>) request.getAttribute("list");
	if(list.size() == 0 ) {
		//조회결과 없습니다.
		out.print("<p> 뭐라고 회원이 하나도없다고?..</p>");
	} else {
		//회원리스트 화면.
		out.print("<ul>");
		for (MemberVO member : list) {
			out.print("<li></li>");
		}
		out.print("</ul>");
	} for (MemberVO member : list) {
		
	}
--%>

</body>
</html>