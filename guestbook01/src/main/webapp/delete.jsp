<%@page import="com.poscoict.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscoict.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	
	new GuestbookDao().delete(vo);
	
	response.sendRedirect(request.getContextPath());
%>