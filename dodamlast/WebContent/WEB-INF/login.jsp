<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<c:set var="cpath" value = "${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
<title>Y O R A M I</title>

<style type="text/css">
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap');

/*
body{
    background-image:url('images/baby2.jpg');
 }

/* background-image blur */
.iimmaaggee::before {
      font-family: 'Noto Sans KR', sans-serif;

  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
  background-image: url('images/bb2.jpg');
  background-size: cover;
  /* opacity */
  opacity: 0.5;
}


#lot{
      font-family: 'Noto Sans KR', sans-serif;
text-align:center;
color: black;
	width: 30%;
	position: relative;
	left: 35%;
	margin-top: 2%;
	font-size:1.5em;
	border-radius: 30px;
	 background-color: #ffffff;
        background-color: rgba( 255, 255, 255, 0.5 );

	
	&::before,
	&::after {
	      font-family: 'Noto Sans KR', sans-serif;
	
		position: absolute;
		content: '';
		width: 0px;
		height: 1px;
		left: 0;
		background-color: rgba(0,0,0,0.2);
		z-index: -1;
}


&::before {
      font-family: 'Noto Sans KR', sans-serif;

		top: 1.4rem;
		animation: draw 500ms linear 1s forwards;
	}
	
	&::after {
	      font-family: 'Noto Sans KR', sans-serif;
	
		bottom: 0.4rem;
		animation: draw 500ms linear 1s forwards;
	}
	
}



@keyframes up {
	
	100% {
		transform: translateY(0);
	}
	
}

@keyframes draw {
	
	100% {
		width: 100%;
	}
	
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
							<h1 id="logo"><a href="loginpage.do" id="ani">로그인 </a></h1>
							<p></p><br><br>

					</div>
				</section>
				<div class="iimmaaggee">
<form action="${cpath}/login.do" method="post">

<table id="lot">
<colgroup>
<col style="width: 133px">
<col style="width: 279px">
</colgroup>
<!-- <thead> -->
  

  <tr  align="center">

    <td class="success tg-baqh" colspan="2" align="center" ><div id = "in"><font color ="black" size="3"><br><b>[ YORAMI LOGIN ]</b><br></font></div></td>
  </tr align="center">
<!-- </thead> -->
<tbody> <br>
  <tr align="center">
    <td class="tg-baqh">ID</td>
    <td class="tg-0lax"><div class="col-xs-12"><input type="text" name="p_id"  size="10" class="form-control input-lg" /></div></td>
  </tr>
  <tr align="center">
    <td class="tg-baqh">PW</td>
    <td class="tg-0lax"><div class="col-xs-12"><input type="password" name="p_pw"  size="10"class="form-control input-lg" /></div></td>
  </tr>
  <tr align="center">
    <td class="tg-baqh" colspan="2" align="center">
       <input type="submit" class="btn btn-default btn-lg" value="로그인"/>
       <input type="reset" class="btn btn-default btn-lg" value="취소"/>
     </td>
  </tr>
    <tr align="center">
    <td class="tg-baqh" colspan="2" align="center">
    </td>
  </tr>
</tbody>
</table>


</form>
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