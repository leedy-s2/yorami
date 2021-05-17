<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="kr.yorami.model.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Y O R A M I</title>


<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
<style type="text/css">

#curve_chart{
position:relative;
margin-left:25%;
width:50%;
height:500px; }

#la{
	color: black;
	width: 50%;
	position: relative;
	left: 25%;
	margin-top: 2%;
	font-size:1.5em;
	background-color : white;
	
}

#ti{
font-size: 2em;
font-weight: bold;
position: relative;
width: 100%;
margin-top: 2%;
}
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
@keyframes tttt{0%{letter-spacing:1em;opacity:0}40%{opacity:.6}100%{letter-spacing:normal;opacity:1}}
#ani{
animation:tttt 5s infinite;
}
</style>
<script type="text/javascript">
function updateml(cnt){
	var lml = document.getElementById(cnt).value;
	console.log(lml);
	location.href= "lactupdate.do?lml="+lml+"&cnt="+cnt;
}
</script>
<title>Y O R A M I</title>

  <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
    

      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
         
         $.ajax({
               type:"POST",
               url:"Lac",
               data : {name : "홍길동"},
               dataType : "json",
               success: drawVisualization,
               error: function(xhr, status, error) {
                   alert(error);
               }  
           });
      }
      
      function  drawVisualization(obj){
    	  var data = new google.visualization.DataTable();
          data.addColumn('number', 'Day');
          data.addColumn('number', '수유 양');
          
    	  $.each(obj, function(index, suyou){
    		  data.addRow([20+index, suyou.sum]);
    	  });  
    	
    	  var options = {
    	          title: '이 달의 수유양',
    	          curveType: 'function',
    	          legend: { position: 'bottom' }
    	        };

    	  var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

    	  chart.draw(data, options);
      }
    </script>
    
    


</head>
<body class="homepage is-preload">

	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="lactList.do" id="ani">수유 기록</a>
				</h1>
				<p></p><br><br>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a class="icon solid fa-home" href="main.do"><span>
									H O M E </span></a></li>
						<li><a href="monitoring.do" class="icon fa-chart-bar"><span>P
									L A Y</span></a>
							<ul>
								<li><a href="monitoring.do">베이비 모니터링</a></li>
							</ul></li>
	                           <li><a class="icon solid fa-cog" href="diarylist.do"><span>D I A R Y </span></a>

							<ul>
								<li><a href="diarylist.do">육아일기</a></li>
								<li><a href="lactList.do">수유기록</a></li>
								<li><a href="calender.do">일정관리</a></li>
							</ul></li>

						<li><a class="icon solid fa-sitemap"
							href="babyinfoinsertform.do"><span>B A B Y</span></a>
							<ul>
								<li><a href="babyinfoinsertform.do">아기등록</a></li>
                                 <li><a href="babyinfolist2.do">아기정보</a></li>
							</ul></li>

						<li><a class="icon solid fa-retweet" href="loginpage.do"><span>L
									O G I N</span></a>
							<ul>
								<li><a href="loginpage.do">로그인</a></li>
								<li><a href="insertform.do">회원가입</a></li>
							</ul></li>
					</ul>
				</nav>

			</div>
		</section>

		<!-- insertFrom  -->
		<!--  -->
		<div class="iimmaaggee">
		<br>
		<div class="imgban"><img src="images/laclistlast.jpg"style="max-width: 100%; height: auto;"></div>
			
			<div>

					<table class="table table-bordered" id="la">
						<colgroup>
							<col style="width: 100px">
							<col style="width: 118px">
							<col style="width: 100px">
							<col style="width: 50px">
						</colgroup>
						<thead>
							<tr>
								<th class="tg-calz" style="text-align:center">수유 횟수</th>
								<th class="tg-calz" style="text-align:center">수유 시간</th>
								<th class="tg-calz" style="text-align:center">수유 양</th>
								<th class="tg-calz" style="text-align:center">등록하기</th>
							</tr>
						</thead>
						<tbody>
																		
							<c:forEach var="vo" items="${list}">
								<tr>
									<td class="tg-baqh" style="text-align:center" >${vo.l_cnt}</td>
									<td class="tg-baqh" style="text-align:center">${vo.l_time}</td>									   
                           <td class="tg-baqh" style="text-align:center"><input type="text" id="${vo.l_cnt}" value="${vo.l_ml}"/></td>
                           <td class="tg-baqh" style="text-align:center"><input type="button" class="btn btn-default" value="등록" onclick = "updateml(${vo.l_cnt})"/></td>
                        </tr>
                     </c:forEach>

						</tbody>
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
		    <div id="curve_chart"></div>
		
		<div class="imgfoot"><img src="images/lacchart.jpg"style="max-width: 100%; height: auto;"></div>
		
</body>
</html>
