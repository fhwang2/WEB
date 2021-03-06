<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<title>Food Cinema</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- css/style.css = grid -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<script type="text/javascript" src="js/jquery-func.js"></script>

<style>
* {
	margin:0;
	padding:0;
	outline:0;
}

body {
	font-size:12px;
	line-height:1.3;
	font-family:Arial, Helvetica, Sans-Serif;
	font-color: red;
	background:url('images/body-bg.gif');
}

div {
	border-style: solid;
	border-color: gray;
}

#shell {
	width:980px;
	margin:0 auto;
}

#admin_total {
	width: 950px;
	hegiht: 50px;
}

</style>

</head>
<body>
	<div id="shell">
		<!-- <div id="header">
			<h1 id="logo">
				<a href="#">FoodCinema</a>
			</h1>
		</div> -->
		<div id="admin_total" class="row">
			<h3>관리자 정보</h3>
			<div id="admin_info" class="col-sm-2">
				
				<p class="">
					계정명 :
					<%
					
				%>
				</p>
			</div>
			<div id="totalCnt" class="col-sm-9">
				<p>홈페이지 방문자수</p>
				<p>
					Total :
					<%
					
				%>
				</p>
				<p>기간선택</p>
				<div id="visitor">월/주/일/시간별 방문자 수 그래프</div>
			</div>
		</div>
		<div id="movie_stat">
			<div id="movie_info_count">영화별 소개 클릭수(그래프)</div>
			<div id="movie_ing_count">영화별 예매 클릭수(그래프)</div>
		</div>
		<div id="matzip_stat">
			<div id="matzip_sex+age">성별&나이별(그래프)</div>
			<div id="matzip_share">맛집별 점유율(그래프)</div>
		</div>
		<div id="footer">
			<div id="companyInfo">
				회사명 : Food Cinema
				주소 : 서울특별시 종로구 수협빌딩 15층
				문의 : 02-0000-0000
				이메일 : contact@foodcinema.com
			</div>
			<p>구분선</p>
			<p class="lf">
				Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved
			</p>
			<p class="rf">
				Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a>
			</p>
			<div style="clear: both;"></div>
		</div>
	</div>
</body>
</html>