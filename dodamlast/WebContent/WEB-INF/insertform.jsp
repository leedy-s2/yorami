<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String cpath=request.getContextPath();
%>    
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
      
      
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}


.iimmaaggee::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 1100px;
  z-index: -1;

  background-image: url('images/bb2.jpg');
  
    background-size: cover;
  /* opacity */
  opacity: 0.5;
}





#ta{
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
	text-shadow: 0px 1px 1px rgba(255,255,255,1);
		
	  	border-radius: 10px;

	&::before,
	&::after {
		position: absolute;
		content: '';
		width: 0px;
		height: 1px;
		left: 0;
		background-color: rgba(0,0,0,0.2);
		z-index: -1;
}
&::before {
		top: 1.4rem;
		animation: draw 500ms linear 1s forwards;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	&::after {
		bottom: 0.4rem;
		animation: draw 500ms linear 1s forwards;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
}



@keyframes up {
	
	100% {
		transform: translateY(0);
		font-family: 'Noto Sans KR', sans-serif;
	}
	
}

@keyframes draw {
	
	100% {
		width: 100%;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
}

@keyframes tttt{0%{letter-spacing:1em;opacity:0}40%{opacity:.6}100%{letter-spacing:normal;opacity:1}}
#ani{
animation:tttt 5s infinite;
font-family: 'Noto Sans KR', sans-serif;
}

.btn-default{
	font-size:1em;
}
</style>
</head>
<body>

<!-- Header -->
				<section id="header" >
					<div class="container"  >

						
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
							<h1 id="logo"><a href="insertform.do" id="ani">회원가입 </a></h1>
							<p></p><br>

					</div>
				</section>
				
			<div class="iimmaaggee">
<form action="<%=cpath%>/insert.do" method="post">	
<table  style="undefined;table-layout: fixed;"  id="ta" >
<colgroup>
<col style="width: 116px">
<col style="width: 406px">
</colgroup>
<!-- <thead> -->
<tr>  
    <td class="success tg-baqh" colspan="2" align="center" ><div id = "in"><font color ="black" size="3"><br><b>[ YORAMI JOIN ]</b><br></font></div></td>
  </tr>
  <!-- </thead> -->

<tbody>
<tr>  
    <td class="tg-c3ow" height="60px" >아이디</td>
    <td class="tg-0pky"><input type='text' name="p_id"/></td>
  </tr>
  <tr>
    <td class="tg-c3ow" width="220px">비밀번호</td>
    <td class="tg-0pky"><input type="password" name="p_pw"/></td>
  </tr>
  <tr>
    <td class="tg-c3ow">이름</td>
    <td class="tg-0pky"><input type='text' name="p_name"/></td>
  </tr>
  <tr>
    <td class="tg-c3ow">전화번호</td>
    <td class="tg-0pky"><input type='text' name="p_phone"/></td>
  </tr>
  <tr>
    <td class="tg-c3ow">요람번호</td>
    <td class="tg-0pky"><input type='text' name="p_num"/></td>
  </tr>
  <tr>
    <td class="tg-baqh" colspan="2" align="center">
      <input type="submit" class= "btn btn-default" value="회원가입"/>
      <input type="reset" class= "btn btn-default"  value="취소"/>
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