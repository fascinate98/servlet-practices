

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>"C:/Users/BIT/Downloads/guestbook/guestbook/deleteform.html"
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
<%
Long no = Long.parseLong( request.getParameter("no"));
	
%>
</head>
<body>
	<form method="post" action="/guestbook01/delete.jsp">
	<input type='hidden' name="id" value="<%=no %>">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="확인"></td>
			<td><a href="/guestbook01">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
</html>