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
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 

<title>Y O R A M I</title>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap');

#in{
width: 30%;

}
/*body{
background-image:url('images/e.jpg');
background-size: 100%, 100%;
}
*/
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
width:50%;
height:37%;
position: relative;
left:25%;
font-family: 'Noto Sans KR', sans-serif;

}

#baby {
	color: black;
	width: 100%;
	left:2%;
	position: relative;
	top:25px;
	height:10%;
    font-family: 'Noto Sans KR', sans-serif;
	background-color: white;
	font-size:1.5em;
	border-radius: 10px;
	
		
}
.btn-default{
	font-size: 0.8em;
	font-family: 'Noto Sans KR', sans-serif;
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
											<li><a href="monitoring.do">????????? ????????????</a></li>
										</ul>
									</li>
                           <li><a class="icon solid fa-cog" href="diarylist.do"><span>D I A R Y </span></a>
										<ul>
											<li><a href="diarylist.do">????????????</a></li>
											<li><a href="lactList.do">????????????</a></li>
											<li><a href="calender.do">????????????</a></li>
										</ul>
									</li>

									<li><a class="icon solid fa-sitemap" href="babyinfoinsertform.do"><span>B A B Y</span></a>
										<ul>
											<li><a href="babyinfoinsertform.do">????????????</a></li>
                                 <li><a href="babyinfolist2.do">????????????</a></li>
										</ul>
									</li>
									
									<li><a class="icon solid fa-retweet" href="loginpage.do"><span>L O G I N</span></a>	<ul>
											<li><a href="loginpage.do">?????????</a></li>
											<li><a href="insertform.do">????????????</a></li>
										</ul>
									</li>
								</ul>
							</nav>

							<!-- Logo -->
							<h1 id="logo"><a href="babyinfoinsertform.do" id="ani">???????????? </a></h1>
							<p></p><br><br>

					</div>
				</section>
				<div class="iimmaaggee">
				<!-- <section id="main"> -->
			    <div id="out">
				<form action="${cpath}/babyinfoinsert.do" method="post" enctype="multipart/form-data">
				
			<input type ="hidden" name="p_id" value="${vo1.p_id}"/>
					 
					 <table id="baby">
						
						<tr>
							
							<td colspan="2" align="center">
							<div id="in">
							<font color="black" size="2em">
							<b>[???????????? ??????]</b>
							</font>
							</div>
							</td>
						</tr>

						<tr>
							<td align="center">?????? ??????</td>
							<td><input type="text" name="b_name"/></td>
						</tr>
						<tr>
							<td align="center">?????? :</td>
							<td><input type="radio" name="b_gender" value="??????"> ??????
							<input type="radio" name="b_gender" value="??????"> ??????
							</td>
						</tr>

						
<!-- 
						<tr bgcolor="whitesmoke">
							<td align="center">?????? :</td>
							<td><select name="b_gender">
									<option>??????</option>
									<option>??????</option>
							</select></td>
						</tr>
 -->
						<tr>
							<td align="center">????????? :</td>
							<td><select name="b_blood">
									<option>A???</option>
									<option>B???</option>
									<option>O???</option>
									<option>AB???</option>
							</select></td>
						</tr>
						<tr>
							<td align="center">?????? :</td>
							<td><input type="date" name="b_birth"></td>
						</tr>
						
						<tr>
							<td align="center">?????? ?????? :</td>
							<td><input type="file" name="b_image"></td>
						</tr>


						<tr>
							<td colspan="2" align="center">
							<input type="submit" class="btn btn-default" value="???????????? ??????" />
							<input type="reset"  class="btn btn-default" value="??????" /></td>
						</tr>
					</table>
				</form>
				</div>
		</div>
		<br><br>
		<!-- </section> -->
			
				
				<!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
				
</body>
</html>
