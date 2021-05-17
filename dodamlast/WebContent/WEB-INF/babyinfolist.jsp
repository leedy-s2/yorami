<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.yorami.model.*"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />





<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap');

/*#main{
background-image:url('images/e.jpg');
background-size: 100%, 100%;
}*/
.iimmaaggee::before {
   content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 1200px;
  z-index: -1;
  background-image: url('images/##.jpg');
  background-size: cover;
  /* opacity */
  opacity: 0.5;
  font-family: 'Noto Sans KR', sans-serif;
}
#in{
max-width: 18%;
     font-family: 'Noto Sans KR', sans-serif;
     font-size:2em;

}
#out{
position:relative;
left:25%;
width:50%;
border-radius: 10px;
top:60px;
height: 930px;
background-color: white;
     font-family: 'Noto Sans KR', sans-serif;
     font-size:1.5em;

}
#baby {

	color: black;
	position: relative;
     font-family: 'Noto Sans KR', sans-serif;
	font-size:1em;
	width: 98%;
	height: 50%;
	
	
}
#im{
height: 300px;
     font-family: 'Noto Sans KR', sans-serif;

}
@keyframes tttt{0%{letter-spacing:1em;opacity:0}40%{opacity:.6}100%{letter-spacing:normal;opacity:1}}
#ani{
animation:tttt 5s infinite;
}

#baby_tr{
	width : 100%;
	height : 20%;
	     font-family: 'Noto Sans KR', sans-serif;
	
}
</style>
<script type="text/javascript">
	function insertForm() {
		//alert("OK")
		location.href = "${cpath}/babyinfoinsertform.do";
	}
	function goingHome() {
		//alert("OK")
		location.href = "${cpath}/main.do";
	}


	


</script>
<title>Y O R A M I</title>
</head>
<body class="homepage is-preload">

	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="babyinfolist.do" id="ani">아기 정보</a>
				</h1>
				<p></p><br><br>

				<!-- Nav -->
					<nav id="nav">
								<ul>
									<li><a class="icon solid fa-home" href="main.do"><span> H O M E </span></a></li>
									<li>
										<a href="monitoring.do" class="icon fa-chart-bar"><span>P L A Y</span></a>
										<ul>
											<li><a href="monitoring.do">베이비 모니터링</a></li>
										</ul>
									</li>
                           <li><a class="icon solid fa-cog" href="diarylist.do"><span>D I A R Y </span></a>
										<ul>
											<li><a href="diarylist.do">육아일기</a></li>
											<li><a href="lactList.do">수유기록</a></li>
											<li><a href="calender.do">일정관리</a></li>
										</ul>
									</li>

									<li><a class="icon solid fa-sitemap" href="babyinfoinsertform.do"><span>B A B Y</span></a>
										<ul>
											<li><a href="babyinfoinsertform.do">아기등록</a></li>
                                 <li><a href="babyinfolist2.do">아기정보</a></li>
										</ul>
									</li>
									
									<li><a class="icon solid fa-retweet" href="loginpage.do"><span>L O G I N</span></a>	<ul>
											<li><a href="loginpage.do">로그인</a></li>
											<li><a href="insertform.do">회원가입</a></li>
										</ul>
									</li>
								</ul>
							</nav>

			</div>
		</section>

		<!-- insertFrom  -->
		 <!-- <section id="main"> -->
		<div class="iimmaaggee">
			<div id ="out">


					<table id="baby" >
			<!--  		<colgroup> 
					<col style="width:10%">
					<col style="width:10%"> 
					<col style="width:10%"> 
					</colgroup>-->	

						<tbody id="baby_tbody">
						<c:forEach var="vo" items="${list}">
						
						<input type="hidden" name="b_num" value="${vo.b_num}" />
							<tr align="center" class="baby_tr">
								<td colspan="2" align="center" id = "bb"><div id="in"><font color="black" size="2em"><b>[아기정보]</b></font></div></td>

							</tr>
							<tr align="center" class="baby_tr">
								<td align="center" colspan="2"><img src="${pageContext.request.contextPath }/upload/image/${vo.b_image}" id="im"></td>
							</tr>
							
							<tr align="center" class="baby_tr">
								<td colspan="2"> 우리 아기 태어난지 d+ ${sysdate-birth}일</td>
							</tr>
							
							<tr class="baby_tr">
								<td align="center">아이디 :</td>
								<td>${vo1.p_id}</td>
							</tr>
							
							<tr class="baby_tr">
								<td align="center">아기 이름 :</td>
								<td>${vo.b_name}</td>
							</tr>

							<tr class="baby_tr">
								<td align="center">성별 :</td>
								<td>${vo.b_gender}</td>
							</tr>

							<tr class="baby_tr">
								<td align="center">혈액형 :</td>
								<td>${vo.b_blood}</td>
							</tr>
							
							<tr class="baby_tr">
								<td align="center">생일 :</td>
								<td>${vo.b_birth}</td>
							</tr>
							
						

							
						</c:forEach>

						<tr class="baby_tr">
							<td colspan="2" align="center">
							<input type="button" onclick="goingHome()" class="btn btn-default" value="홈으로" /> 
							<input type="button" onclick="insertForm()" class="btn btn-default" value="아기등록하기" />
							</td>
						</tr>
						</tbody>
					</table>
			</div>
			</div>
	<!-- </section> -->
		</div>
		<br><br><br><br><br><br>
		
		
		
		
		<!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
		
		
		</body>
		</html>
		