<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
<title>Y O R A M I</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap');
      
/*
body{

background-image:url('images/aa.jpg');
background-size: 100%, 100%;
}
*/
/* background-image blur */
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
#diary{
position : relative;
left:2%;
width : 98%;
font-family: 'Noto Sans KR', sans-serif;
font-size: 1.5em;
}
#out{
position:relative;
background-color: white;;
width : 55%;
left:22%;
border-radius: 10px;
margin-top: 1%;
height: 50%;
font-family: 'Noto Sans KR', sans-serif;
}
#page{
position : relative;
left:49%;
bottom:40px;
font-family: 'Noto Sans KR', sans-serif;
}
#next{
left:940px;
bottom:10px;
font-family: 'Noto Sans KR', sans-serif;
}
#pre{
left:940px;
bottom:10px;
font-family: 'Noto Sans KR', sans-serif;
}

@keyframes tttt{0%{letter-spacing:1em;opacity:0}40%{opacity:.6}100%{letter-spacing:normal;opacity:1}}
#ani{
animation:tttt 5s infinite;
font-family: 'Noto Sans KR', sans-serif;
}

.btn-default{
font-family: 'Noto Sans KR', sans-serif;
font-size: 0.8em;
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
							<h1 id="logo"><a href="diarylist.do" id="ani">육아 일기 </a></h1><br><br>
							
					</div>
				</section>

<div class="iimmaaggee">	
			<div class="imgban"><img src="images/diarylist_fi.jpg"style="max-width: 100%; height: auto;"></div>
				
<div id="out" >

		<table id="diary" class="table table-hover" style="color:black">
			<!-- 원래 글쓰기 자리 
			<tr height = "40">
				<td colspan="6" align="right">
					<button onclick="location.href ='diarywritere.do'">글쓰기</button>
				</td>
			</tr>
			-->
			
			<tr height = "40" align ="center">
				<td width = "80" align ="center"><b>번호 </td></b>
				<td width = "320" align ="center"><b>제목</td></b>
				<td width = "100" align ="center"><b>작성자 </td></b>
				<td width = "150" align ="center"><b>작성일 </td></b>
				<td width = "80" align ="center"><b>조회수</td></b>
				<td width = "80" align ="center"></td>
			</tr>
			
			<c:set var="number" value="${number}" />
			<c:forEach var="vo" items="${list}">
			
			<tr height = "40">
				<td width = "50" align ="center">${number}</td>
				<td width = "320" align ="center">
					<c:if test="${vo.re_step>1}">
						<c:forEach var="j" begin="1" end="${(vo.re_step-1)*5}">
							&nbsp;
						</c:forEach>
					</c:if>
					<a href="diaryinfo.do?num=${vo.num}">${vo.subject}</a>
				</td>
				<td width = "100" align ="center">${vo. write}</td>
				<td width = "150" align ="center">${vo.reg_date} </td>
				<td width = "80" align ="center">${vo.readcount}</td>
				<td width = "80" align ="right">
				<input type="button" value="삭제"  onclick="location.href='diarydelete.do?num=${vo.num}'"> 
				</td>
			</tr>
			<c:set var="number" value="${number-1}" />
			</c:forEach>
			<tr height = "40">
				<td colspan="6" align="right">
					<!-- 원래 글쓰기 <button onclick="location.href ='diarywritere.do'">글쓰기</button>-->
					<input type="button" value="글쓰기" class="btn btn-default"  onclick="location.href ='diarywritere.do'">
				</td>
			</tr>
		
           </table>
		
		
		
		
		<!-- 페이지 카운터링 소스 작성  -->
		<c:if test="${count>0}">
			<c:set var="pagecount" value="${count /pagesize + (count%pagesize == 0 ? 0 : 1 )}" />
			<c:set var="startpage" value="${1}" />
			
			<c:if test="${currentpage%10 != 0}">
				<!--결과를 정수형으로 리턴 받아야 하기에 fmt  -->
				<fmt:parseNumber var="result" value="${currentpage/10}" integerOnly="true"/>
				<c:set var="startpage" value="${result*10+1}" />
			</c:if>
			
			<c:if test="${currentpage%10 == 0}">
				<!--결과를 정수형으로 리턴 받아야 하기에 fmt  -->
				<c:set var="startpage" value="${(result-1)*10+1}" />
			</c:if>
			
			<!-- 화면에 보여질 페이지 처리 숫자를 표현 -->
			<c:set var="pageblock" value="${10}" />
			<c:set var="endpage" value="${startpage+pageblock-1}" />
			
			<c:if test="${endpage > pagecount}">
				<c:set var="endpage" value="${pagecount}" />
			</c:if>
			
			<!--이전 링크를 결지 파악 -->
			<c:if test="${startpage > 10}">
				<!--  <a href="diarylist.do?pagenum=${startpage-10}">[이전]</a>-->
				<button onclick="location.href='diarylist.do?pagenum=${startpage-10}'"type="button" 
				class="btn btn-xs" style ="text-decoration:none" id = "pre">
				이전</button>
			</c:if>
			
			<!-- 페이징 처리-->
			<c:forEach var="i" begin="${startpage}" end="${endpage}">
				<!-- <a href="diarylist.do?pagenum=${i}" style ="text-decoration:none" id = "page">[${i}]</a> -->
				<button onclick="location.href='diarylist.do?pagenum=${i}'"type="button" 
				class="btn btn-xs" style ="text-decoration:none" id = "page">
				${i}</button>
				
			</c:forEach>
			
			<!-- 다음  -->
			<c:if test="${endpage < pagecount}">
				<!--  <a href="diarylist.do?pagenum=${startpage+10}">[다음]</a>-->
				<button onclick="location.href='diarylist.do?pagenum=${startpage+10}'"type="button" 
				class="btn btn-xs" style ="text-decoration:none" id = "next">
				다음</button>
			</c:if>
			
		</c:if>
		
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