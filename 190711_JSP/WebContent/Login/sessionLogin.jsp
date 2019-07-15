<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>SessionLogin</h1>

<%
	request.setCharacterEncoding("utf-8");
	
	String sid = request.getParameter("id");
	String spw = request.getParameter("pw");
	
	// 문자열의 내용이 같은지 확인하고 싶기 때문에 equals사용, == 연산자 사용시 주소만 참조
	// input text 상자는 null값도 ""로 인식하기 때문에, null이 아닌 조건을 추가해주어야함
	if((sid.equals(spw)) && (sid.length()>1)){ 
		session.setAttribute("MEMBERID", sid);
		response.sendRedirect("successLogin.jsp");
	}else{
		out.write("<h1>로그인실패</h1>");
	}
%>
