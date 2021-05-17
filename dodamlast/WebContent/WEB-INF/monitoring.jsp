<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
    
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
<style>

@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap');

.video {
  width: 100%;
  max-width: 900px;
  height: 570px;
  margin: 30px auto;
  border-radius: 30px;
  background-color: #f0f0f0;
  padding: 40px;
  box-sizing: border-box;
  box-shadow: 0px 8px 33px #999;
  
}
  

 
 .video-container {
  position: relative;
  width: 100%;
  height:200px;
  padding-top: 50%;
}
 
 
 
iframe {
  z-index: 1;
  top: 0;
  left: 0;
  position: absolute;
  width: 100%;
  height: 100%;
}



#cam{
width : 100%;
height: 100%;
}
@keyframes tttt{0%{letter-spacing:1em;opacity:0}40%{opacity:.6}100%{letter-spacing:normal;opacity:1}}
#ani{
animation:tttt 5s infinite;
}

.btn{
 width: 180px;
  height: 50px;
  font-size:15px;
 font-family: 'Noto Sans KR', sans-serif;
 font-size: 1.5em;
  color: black;
  line-height: 50px;
  text-align: center;
  border: solid 1px grey;
}

#pp{
position: relative;
margin-left: 42%;
}
.bbbb{
position: relative;
bottom:30px;
}

</style>


<script type="text/javascript">
function playon(state){
   location.href= "play.do?state="+state;
}
function playoff(state){
location.href="play.do?state="+state;
}

</script>
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
                           
                           <li><a class="icon solid fa-retweet" href="loginpage.do"><span>L O G I N</span></a>   <ul>
                                 <li><a href="loginpage.do">로그인</a></li>
                                 <li><a href="insertform.do">회원가입</a></li>
                              </ul>
                           </li>
                        </ul>
                     </nav>

                     <!-- Logo -->
                     <h1 id="logo"><a href="monitoring.do" id="ani">베이비 모니터링 </a></h1>
                     <p></p><br><br>

               </div>
            <div class="camhowto"><img src="images/monitoring.jpg"style="max-width: 100%; height: auto;"></div>
            </section>

<div class="video">
    <div class="video-container">
     <iframe id="cam" src="http://192.168.137.194:81/stream" frameborder="4px"></iframe>  </div>
<br><br><br>
</div>
     <div style="text-align: center;">
 <p id ="pp"></p>
  <button class="btn btn-warning" onclick="playon(1)">
 PLAY ON
  </button> &nbsp;&nbsp;&nbsp;
  <button class="btn btn-warning" onclick="playoff(0)">
 PLAY OFF  </button>
</div>
<br><br>


<script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
</body>
</html>