<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script>
	// Client에서 form에 올바른 정보가 입력되었는지 확인
	function validationCheck(){
		//비밀번호 숫자, 문자 8자리 이하일 때만 성공
		<%
			// gi : 앞에만 보지말고 전체를 다 봐라
/* 			var pwPolicy = /^[a-zA-Z0-9]{8,15}/gi;
			var pw = document.getElementById("pw");
			
			var result = str.search(pwPolicy);
			
			
			
			if(!check(pwPolicy, pw)){
				return false; 
			}*/
			
			
		%>
		//서버(submit기능)에 전송
		
	}
</script>
</head>
<body>
	<form action="<%= request.getContextPath() %>/Login/sessionLogin.jsp" method="POST">
		아 이 디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pw"><br>
		<input type="button" onclick="validationCheck()" value="로그인">
	</form>
</body>
</html>