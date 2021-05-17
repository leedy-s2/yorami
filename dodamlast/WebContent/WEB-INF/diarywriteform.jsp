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
#out{
background-color: white;
border-radius: 10px;
width: 37%;
font-family: 'Noto Sans KR', sans-serif;
font-size: 1.5em;
position:relative;
left:31%;

}
#diary{
position : relative;
height: 95%;
width: 98%;
left: 1%;
margin-bottom : 2%;
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
							<h1 id="logo"><a href="diarylist.do" id="ani">일기 작성</a></h1>
							<p></p><br><br>
							

					</div>
				</section>


<div class="iimmaaggee">
<div id="out">
<form action = "diarywrite.do" method = "post">
<input type ="hidden" name="p_id" value="${vo1.p_id}"/>
			<table	   id="diary">
											
				
				<tr height="40">
						<td align = "center" width ="150">아이디</td>
						<td width="450" height="50">${vo1.p_id}</td>
				</tr>
				
				<tr height="40">
						<td align = "center" width ="150">작성자</td>
						<td width="450"><input type= "text" name = "write" size = "60"></td>
				</tr>
				
				<tr height="40">
						<td align = "center" width ="150">제목</td>
						<td width="450"><input type= "text" name = "subject" size = "60"></td>
				</tr>
				
				
				<tr height="40">
						<td align = "center" width ="150">글 내용</td>
						<td width="450"><textarea rows= "10" cols = "60" name = "content"></textarea></td>
				</tr>
				
				<tr height="40">
						<td align = "center" colspan = "2">
							<input type= "submit" class="btn btn-default" value="글쓰기">&nbsp;&nbsp;
					
							<input type= "reset"  class="btn btn-default" value="다시 작성">&nbsp;&nbsp;
							<!-- <button onclick="location.href='diarylist.do'"type="button" class="btn btn-sm">리스트</button> -->
							<input type="button" class="btn btn-default" value="리스트" onclick="location.href='diarylist.do'"/>
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