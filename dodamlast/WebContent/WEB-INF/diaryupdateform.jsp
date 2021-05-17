<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
<title>Y O R A M I</title>
<style type="text/css">

.iimmaaggee::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 1150px;
  z-index: -1;

  background-image: url('images/##.jpg');
  
    background-size: cover;
  /* opacity */
  opacity: 0.5;
}
#out{
position:relative;
background-color:rgb(233,222,214);
width : 33%;
border: 2px solid #444444;
left:34%;
border-radius: 30px;


}
#diary{
position : relative;

width:98%;

}
#write{
font-size: 2em;
}
@keyframes tttt{0%{letter-spacing:1em;opacity:0}40%{opacity:.6}100%{letter-spacing:normal;opacity:1}}
#ani{
animation:tttt 5s infinite;
}
</style>
</head>
<body>

<!-- Header -->
				<section id="header">
					<div class="container">

						
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

							<!-- Logo -->
							<h1 id="logo"><a href="diarylist.do" id="ani">일기 수정</a></h1>
							<p>아기와 나를 위한 선택 YORAMI</p>

					</div>
				</section>
<div class="iimmaaggee">
<div id="out">
	<form action="diaryupdateproc.do" method ="post">
		<table  id="diary">
		<tr id="write">
		<td width="180" align="center" colspan="2">${vo.write}님의 일기 수정</td>
		</tr>
			<tr height= "40">
			<!-- 원래 작성자 위치 
				<td width="120" align="center">작성자</td>
				<td width="180" align="center">${vo.write}</td>
				-->
				<td width="120" align="center">작성일</td>
				<td width="180" align="center">${vo.reg_date}</td>
			</tr>
			
			<tr height= "40">
				<td width="120" align="center">제목</td>
				<td width="480" colspan="3">&nbsp;<input type="text" name="subject" value="${vo.subject}" size="60"></td>
			</tr>
			
			<tr height= "40">
				<td width="120" align="center">글내용</td>
				<td width="480" colspan="3"><textarea rows="10" cols="60" name="content">${vo.content}</textarea></td>
			</tr>
			
			<tr height= "40">
				<td colspan="4" align="center">
					<input type="hidden" name="num" value="${vo.num}">
					
					<input type="submit" value="글수정">&nbsp;&nbsp;
					<input type="button" onclick = "location.href='diarylist.do'" value="전체 글 보기">
				</td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	<!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

</body>
</html>