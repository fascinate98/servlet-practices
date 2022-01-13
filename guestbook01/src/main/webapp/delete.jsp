
<%@page import="java.util.List"%>
<%@page import="com.poscoict.guestbook.vo.GuestBookVo"%>
<%@page import="com.poscoict.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    Long no = Long.parseLong(request.getParameter("id"));
    String password = request.getParameter("password");

    
    GuestBookVo vo = new GuestBookVo();

	vo.setNo(no);
	vo.setPassword(password);
	new GuestBookDao().delete(vo);
	
	response.sendRedirect("/guestbook01");
    %>
