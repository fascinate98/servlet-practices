
<%@page import="java.util.List"%>
<%@page import="com.poscoict.guestbook.vo.GuestBookVo"%>
<%@page import="com.poscoict.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String message = request.getParameter("message");

    
    GuestBookVo vo = new GuestBookVo();
    

	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("/guestbook01");
    %>
