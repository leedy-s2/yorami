<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% pageContext.setAttribute("newLineChar", "\n"); %>
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
  height: 1050px;
  z-index: -1;

  background-image: url('images/##.jpg');
    background-size: cover;
  /* opacity */
  opacity: 0.5;
}
#diary{
position : relative;


width:98%;
height:98%;
left:2%;


}

#out{
position:relative;
background-color:rgb(233,222,214);
width : 35%;
border: 2px solid #444444;
left:31%;
border-radius: 30px;

height: 550px;
}
#ps{
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
							<h1 id="logo"><a href="diarylist.do" id="ani">일기 보기</a></h1>
							<p>아기와 나를 위한 선택 YORAMI</p>

					</div>
				</section>
<div class="iimmaaggee">
<div id="out">
			<table id="diary" >
			
			  <tr  id = "ps">
					<td colspan = "4" align ="center">${vo1.p_id} 님의 일기 </td>
				</tr>
						
				<tr>
					<td  align ="center">글번호 </td>
					<td  align ="left">${vo.num}</td>
					<td  align ="center">조회수 </td>
					<td  align ="left">${vo.readcount} </td>
				</tr>
				
				<tr>
					<td  align ="center">작성자 </td>
					<td  align ="left">${vo.write}</td>
					<td  align ="center">작성일 </td>
					<td  align ="left">${vo.reg_date}</td>
		        </tr>
		      		
				<tr >
					<td  align ="center">제목 </td>
					<td colspan = "3" align ="center">${vo.subject}</td>
				</tr>
				
				<tr>
					<td  align ="center">글 내용 </td>
					<td colspan = "3" align ="center"><b>${fn:replace(vo.content, newLineChar, "<br/>")}</b></td>
				</tr>
				
				<tr>
					<td align ="center" colspan = "4">  
						<input type="button" value="수정하기" onclick="location.href='diaryupdate.do?num=${vo.num}'"> 
						<input type="button" value="삭제하기" onclick="location.href='diarydelete.do?num=${vo.num}'"> 
						<input type="button" value="목록보기" onclick="location.href='diarylist.do'">     
					</td>
				</tr>
		</table>
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