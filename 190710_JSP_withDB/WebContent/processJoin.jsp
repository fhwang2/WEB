<%@page import="kr.mycom.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	/* Member mobj = new Member();
	mobj.setId(request.getParameter("id"));
	mobj.setName(request.getParameter("name"));
	mobj.setPassword(request.getParameter("password"));
	 */
	 
%>
<jsp:useBean id="mobj" class="kr.mycom.Member"/>
<jsp:setProperty property="*" name="mobj" />
<%= mobj %>
