<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html>
<head>

<meta charset='utf-8' />



<link href='fullcalendar-5.5.1/lib/main.css' rel='stylesheet' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<script src='fullcalendar-5.5.1/lib/main.js'></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			initialDate : '2021-02-12',
			navLinks : true, // can click day/week names to navigate views
			selectable : true,
			selectMirror : true,
			select : function(arg) {
				var title = prompt('일정을 입력하세요.');
				if (title) {
					calendar.addEvent({
						title : title,
						start : arg.start,
						end : arg.end,
						allDay : arg.allDay
					})
				}
				calendar.unselect()
			},
			eventClick : function(arg) {
				if (confirm('이 일정을 삭제하시겠습니까?')) {
					arg.event.remove()
				}
			},
			editable : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : [ {
				title : '문화센터 가는 날',
				start : '2021-02-01',
				color : '#6A1B9A'
			}, {
				title : '제주도 가족여행',
				start : '2021-02-06',
			},
			{
				title : '문화센터 가는 날',
				start : '2021-02-08',
				color : '#6A1B9A'
			}, {
				title : '베이비페어 ',
				start : '2021-02-09',
			}, {
				title : '하율맘과 점심식사',
				start : '2021-02-12T13:00:00',
			},

			{
				title : '문화센터 가는 날',
				start : '2021-02-15',
				color : '#6A1B9A'
			},
			{
				title : '문화센터 가는 날',
				start : '2021-02-22',
				color : '#6A1B9A'
			},
			{
				title : '도담이 생일',
				start : '2021-02-18',
				color : '#be5683'
			},
			{
				title : 'Tdap 2차접종 (미즈피아병원)',
				start : '2021-02-22T09:30:00'
			},
			{
				title : 'IPV 2차접종 (아이맘병원)',
				start : '2021-02-24T09:30:00'
			},
			{
				title : '시후돌잔치(락페스타)',
				start : '2021-02-26T11:00:00'
			},
			{
				title : '아이맘 정기모임',
				start : '2021-02-27T19:50:00'
			},
			]
		});

		calendar.render();
	});
</script>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
<style>
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap');

body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
	text-align: center;
     font-family: 'Noto Sans KR', sans-serif;
  
}

#tips{
	color:black;
	font-family: 'Noto Sans KR', sans-serif;
	text-align:center;
	width:100%;

}

.success{
	align:text-center;
}
#calendar {
	max-width: 1100px;
	margin: 0 auto;
	font-family: 'Noto Sans KR', sans-serif;
}

.table {
	margin: 0px auto;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 1.1em;

}

.quotes {
  width: 80vw;
  min-height: 400px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  z-index: 2;
  position: relative;
  left: 10%;
  top: 70px;
  font-weight: bold;
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .box {
  position: relative;
  width: 25vw;
  height: 50vh;
  min-height: 320px;
  background: #f2f2f2;
  overflow: hidden;
  transition: all 0.5s ease-in;
  z-index: 2;
  box-sizing: border-box;
  padding: 30px;
  box-shadow: -10px 25px 50px rgba(0, 0, 0, 0.3);
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .box::before {
  content: '\201C';
  position: absolute;
  top: -20px;
  left: 5px;
  width: 100%;
  height: 100%;
  font-size: 120px;
  opacity: 0.2;
  background: transparent;
  pointer-events: none;
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .box::after {
  content: '\201D';
  position: absolute;
  bottom: -10%;
  right: 5%;
  font-size: 120px;
  opacity: 0.2;
  background: transparent;
  filter: invert(1);
  pointer-events: none;
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .box p {
  margin: 0;
  padding: 10px;
  font-size: 1.2rem;
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .box h2 {
  position: absolute;
  margin: 0;
  padding: 0;
  bottom: 10%;
  right: 10%;
  font-size: 1.5rem;
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .box:hover {
  color: #f2f2f2;
  box-shadow: 20px 50px 100px rgba(0, 0, 0, 0.5);
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .bg {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  opacity: 0;
  transition: all 0.5s ease-in;
  pointer-events: none;
  width: 100%;
  height: 200%;
  overflow: hidden;
  font-family: 'Noto Sans KR', sans-serif;
}

.quotes .box.box1:hover,
.quotes .box.box1:hover~.bg {
  opacity: 1;
  background: #e2a9e5;
background: -moz-linear-gradient(-45deg, #e2a9e5 15%, #2b94e5 100%);
background: -webkit-linear-gradient(-45deg, #e2a9e5 15%,#2b94e5 100%);
background: linear-gradient(135deg, #e2a9e5 15%,#2b94e5 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e2a9e5', endColorstr='#2b94e5',GradientType=1 );
}

.quotes .box.box2:hover,
.quotes .box.box2:hover~.bg {
  opacity: 1;
  background: #632c65;
background: -moz-linear-gradient(-45deg, #632c65 15%, #56a5e2 100%);
background: -webkit-linear-gradient(-45deg, #632c65 15%,#56a5e2 100%);
background: linear-gradient(135deg, #632c65 15%,#56a5e2 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#632c65', endColorstr='#56a5e2',GradientType=1 );
}

.quotes .box.box3:hover,
.quotes .box.box3:hover~.bg {
  opacity: 1;
  background: #4b384c;
background: -moz-linear-gradient(-45deg, #4b384c 15%, #da5de2 100%);
background: -webkit-linear-gradient(-45deg, #4b384c 15%,#da5de2 100%);
background: linear-gradient(135deg, #4b384c 15%,#da5de2 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4b384c', endColorstr='#da5de2',GradientType=1 );
}
#aa{
font-size: 3em;
position:relative;
top:30px;
font-family: 'Noto Sans KR', sans-serif;
}
#bb{
position: relative;
width: 100%;
height: 48px;
font-family: 'Noto Sans KR', sans-serif;
}

.card{
 letter-spacing: 15px;
 font-family: 'Noto Sans KR', sans-serif;
}

@keyframes tttt{0%{letter-spacing:1em;opacity:0}40%{opacity:.6}100%{letter-spacing:normal;opacity:1}}
#ani{
animation:tttt 5s infinite;
font-family: 'Noto Sans KR', sans-serif;
}

</style>
</head>
<body>
<!-- 여기 <div id="qwe">-->

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
							<h1 id="logo"><a href="calender.do" id="ani">육아 일정 </a></h1>
							<p></p><br><br>

					</div>
				</section>

	<div id='calendar'></div>
	<br>
	<br><br><br>
	
		
	
	<div id='tips'>
		<img src = "images/syringe.png" width="100px">
		<h2>[ 예방접종 도우미 ]</h2>
		
		<table class="table table-bordered"
			style="table-layout: fixed; width: 1027px" id="zxc">
			<colgroup>
				<col style="width: 136px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
				<col style="width: 81px">
			</colgroup>
			<thead>
				<tr class="success" style="color:black">
					<th class="tg-9wq8" >대상감염병</th>
					<th class="tg-9wq8">백신 종류</th>
					<th class="tg-9wq8">출생 시</th>
					<th class="tg-9wq8">1개월</th>
					<th class="tg-9wq8">2개월</th>
					<th class="tg-9wq8">4개월</th>
					<th class="tg-9wq8">6개월</th>
					<th class="tg-9wq8">12개월</th>
					<th class="tg-9wq8">15개월</th>
					<th class="tg-9wq8">18개월</th>
					<th class="tg-9wq8">24개월</th>
					<th class="tg-9wq8">36개월</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="tg-9wq8">결핵</td>
					<td class="tg-9wq8">BCG</td>
					<td class="tg-9wq8">1차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">B형간염</td>
					<td class="tg-9wq8">Hepβ</td>
					<td class="tg-9wq8">1차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8">3차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">디프테리아/<br>파상풍/<br>백일해
					</td>
					<td class="tg-9wq8">DTaP<br>Tdap
					</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8">1차</td>
					<td class="tg-9wq8">2차</td>
					<td class="tg-9wq8">3차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8" colspan="2">4차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">폴리오</td>
					<td class="tg-9wq8">IPV</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8">1차</td>
					<td class="tg-9wq8">2차</td>
					<td class="tg-9wq8">3차</td>
					<td class="tg-9wq8" colspan="2">4차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">b형 헤모필루스 <br>인플루엔자
					</td>
					<td class="tg-9wq8">Hib</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8">1차</td>
					<td class="tg-9wq8">2차</td>
					<td class="tg-9wq8">3차</td>
					<td class="tg-9wq8" colspan="2">4차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">폐렴구균</td>
					<td class="tg-9wq8">PCV<br>PPSV
					</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8">1차</td>
					<td class="tg-9wq8">2차</td>
					<td class="tg-9wq8">3차</td>
					<td class="tg-9wq8" colspan="2">4차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">홍역/유행성<br>이하선염/풍진
					</td>
					<td class="tg-9wq8">MMR</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8" colspan="2">1차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">수두</td>
					<td class="tg-9wq8">VAR</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8" colspan="2">1차</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
				</tr>
				<tr>
					<td class="tg-9wq8">A형간염</td>
					<td class="tg-9wq8">HepA</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8" colspan="5">1차</td>
				</tr>
				<tr>
					<td class="tg-9wq8">일본뇌염</td>
					<td class="tg-9wq8">IJEV<br>LJEV
					</td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8"></td>
					<td class="tg-9wq8" colspan="5">1차</td>
				</tr>
			</tbody>
		</table>
<br><br>
	</div>
<!-- 여기 </div>--> 
	<div>
	<div class="imgtips"><img src="images/listfi.jpg"style="max-width: 100%; height: auto;"></div>



	<!-- 맨위로 버튼 --> 
	
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