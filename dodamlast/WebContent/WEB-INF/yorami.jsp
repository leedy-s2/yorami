<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Strongly Typed by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>Y O R A M I</title>
      <meta charset="utf-8" />
      
       <meta name="description" content="Expanding Overlay Effect: Revealing content using CSS clip" />
      <meta name="keywords" content="css, css3, clip, rect(), overlay, expand, fixed, effect, responsive" />
      <meta name="author" content="Codrops" />
      <link rel="shortcut icon" href="../favicon.ico"> 
      <link rel="stylesheet" type="text/css" href="assets/css/default.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/climacons.css" />
      <link rel="stylesheet" type="text/css" href="assets/css/component.css" />
      
      
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      
     
      <script src="assets/js/modernizr.custom.js"></script>
      <style type="text/css">
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap');
      
      
      body{
      background-color: rgb(245,219,216);
      font-family: 'Noto Sans KR', sans-serif;
      }
     .asd{
     position: relative;
     left: 30%;
     font-family: 'Noto Sans KR', sans-serif;
     }
     .con {
  display: flex;
  width: 100%;
  padding: 4% 2%;
  box-sizing: border-box;
  height: 100%;
  font-family: 'Noto Sans KR', sans-serif;
}

.bo {
  flex: 1;
  overflow: hidden;
  transition: .5s;
  margin: 0 2%;
  box-shadow: 0 20px 30px rgba(0,0,0,.1);
  line-height: 0;
  font-family: 'Noto Sans KR', sans-serif;
  color: #95ACBF;
}

.bo > img {
  width: 100%;
  height: calc(100% - 10vh);
  object-fit: cover; 
  transition: .5s;
  font-family: 'Noto Sans KR', sans-serif;
}
.bo > span {
  font-size: 3.8vh;
  font-weight: 500;
  display: block;
  text-align: center;
  height: 10vh;
  line-height: 2.6;
  color: #BFA380;
 font-family: 'Noto Sans KR', sans-serif;
}



.bo:hover { flex: 1 1 50%; }
.bo:hover > img {
  width: 100%;
  height: 80%;
}

.container1{
background-color: white;
}

      
      </style>
   </head>
   <body class="homepage is-preload">
      <div id="page-wrapper">

         <!-- Header -->
            <section id="header">
               <div class="container">

                  <!-- Logo -->
                  <img src="images/dodamdodam.png" height="200px" width="230px">
                     <h1 id="logo"><a href="main.do">Yorami</a></h1>
<p></p><br><br>
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

               </div>
            </section>



            <div class="howto"><img src="images/mainpd9.jpg"style="max-width: 100%; height: auto;"></div>


         <!-- Banner -->
            

         <!-- Main -->
         
          <div class="container1">   
         <header class="clearfix">
            <h1> YORAMI CONTENTS <span>[ 페이지 이용하는 방법 ]</span></h1>
         </header>
         <div class="main">
            <ul id="rb-grid" class="rb-grid clearfix">
               
               <li class="icon-clima-5 rb-span-2">
                  <span class="rb-temp">아기등록 & 아기정보</span>
                  <div class="rb-overlay">
                     <span class="rb-close">close</span>
                     <div class="rb-week">
                        <div><h2 class="hh"><font color="white">아기등록 & 아기정보</font></h2><br><br><br><br><br>
                        <div class="asd">
<p>1 ) 아기 등록 페이지를 클릭하여 아기의 정보를 입력합니다.</p><br><br><br>
<p>2 ) 입력한 아기의 정보는 아기정보 페이지에서 확인가능합니다.</p><br><br><br>
</div>
                        </div>
                     </div>
                  </div>
               </li>
               
               <li class="icon-clima-2">
                  <span class="rb-temp">수유기록</span>
                  <div class="rb-overlay">
                     <span class="rb-close">close</span>
                     <div class="rb-week">
                        <div><h2 class="hh"><font color="white">수유기록</font></h2><br><br><br><br><br>
                        <div class="asd">
<p>1 ) 수유 시 요람에 부착된 버튼을 눌러 수유 시간을 체크하세요.</p><br><br><br>
<p>2 ) 수유 시간은 수유 기록 페이지에 자동으로 저장됩니다.</p><br><br><br>
<p>3 ) 해당 되는 시간대를 체크 후 수유 양을 기록하세요.</p><br><br><br>
</div>
                        </div>
                     </div>
                  </div>
               </li>
               <li class="icon-clima-1">
                  <span class="rb-temp">육아일기</span>
                  <div class="rb-overlay">
                     <span class="rb-close">close</span>
                     <div class="rb-week">
                        <div><h2 class="hh"><font color="white">육아일기</font></h2><br><br><br><br><br>
                        <div class="asd">
<p>1 ) 육아 일기 페이지에서 글쓰기 버튼을 클릭합니다.</p><br><br><br>
<p>2 ) 제목과 내용을 입력한 후, 사진을 첨부합니다.</p><br><br><br>
<p>3 ) 리스트에서 일지를 클릭 시 시간별 수유 정보 그래프와 등록한 일기가 나타납니다.</p><br><br><br>
</div>
                        </div>
                     </div>
                  </div>
               </li>
               <li class="icon-clima-4">
                  <span class="rb-temp">일정관리</span>
                  <div class="rb-overlay">
                     <span class="rb-close">close</span>
                     <div class="rb-week">
                        <div><h2 class="hh"><font color="white">일정관리</font></h2><br><br><br><br><br>
                        <div class="asd">
<p>1 ) 일정을 등록하고 싶은 날짜를 클릭합니다.</p><br><br><br>
<p>2 ) 해당 일자에 예방접종, 행사일정, 진료예약과 같은 중요 일정을 추가합니다.</p><br><br><br>
<p>3 ) 드래그 하여 1일 이상의 일정을 추가합니다.</p><br><br><br>

                        </div>
                     </div>
                  </div>
               </li>
               <li class="icon-clima-1">
                  <span class="rb-temp">베이비 모니터링</span>
                  <div class="rb-overlay">
                     <span class="rb-close">close</span>
                     <div class="rb-week">
                        <div><h2 class="hh"><font color="white">베이비 모니터링</font></h2><br><br><br><br><br>
                        <div class="asd">
<p>1 ) 요람에 부착된 카메라를 통해 실시간으로 아기의 모습을 확인합니다.</p><br><br><br>
<p>2 ) 플레이 버튼을 누르면 원격으로 모빌을 흔들어 아이와 놀아줄 수 있습니다.</p><br><br><br>
<p>3 ) 보이스 플레이 버튼을 누르면 부모님의 음성을 아이에게 전달합니다.</p><br><br><br>
</div>
                        </div>
                     </div>
                  </div>
               </li>
               
               <li class="icon-clima-2 rb-span-2">
                  <span class="rb-temp">도담도담</span>
                  <div class="rb-overlay">
                     <span class="rb-close">close</span>
                     <div class="rb-week">                        
                     <div><h2 class="hh"><font color="white">도담도담</font></h2><br><br><br><br><br>
                     <div class="asd">
<p>♥도담도담♥은 어린아이가 탈 없이 잘 놀며 자라는 모습을</p><br><br><br>
<p>나타내는 순 우리말입니다. 요라미를 구매해주신 고객님들, </p><br><br><br>
<p>천사같은 아이들을 예쁘게 잘 자랄 수 있도록 저희도 돕겠습니다.</p><br><br><br>
</div>
                        </div>
                     </div>
                  </div>
               </li>
                  </div>
               </li>
            </ul>
            
         </div>
      <!-- /container -->
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script src="assets/js/jquery.fittext.js"></script>
      <script src="assets/js/boxgrid.js"></script>
      <script>
         $(function() {
            Boxgrid.init();
         });
      </script>
         
         
         
            <section id="main">
               <div class="container">
                  <div class="row">

                     <!-- Content -->
                        <div id="content" class="col-8 col-12-medium">

                           <!-- Post -->
                              <article class="box post">
                                 <header>
                                  
                           <!-- Post -->
                              <article class="box post">
                                 <header align="center">
                                    <h2><a href="#"><strong>OUR TEAM </strong> MEMBERS</a></h2>
                                 </header>
                                 <!-- <a href="#" class="image featured"><img src="images/pic05.jpg" alt="" /></a>-->
                                 <div class="con">
  <div class="bo">
    <img src="images/leedayoung.png">
    <span>이다영</span>
  </div>
  <div class="bo">
    <img src="images/nahanjoo.jpg">
    <span>나한주</span>
  </div>
  <div class="bo">
    <img src="images/leedongho.jpg">
    <span>이동호</span>
  </div>
  </div>
  <div class="con">
  <div class="bo">
    <img src="images/leejeongwook.jpg">
    <span>이정욱</span>
  </div>
  <div class="bo">
    <img src="images/janggyeonghwan2.jpg">
    <span>장경환</span>
  </div>
  <div class="bo">
    <img src="images/jyn.jpg">
    <span>정예나</span>
  </div>
</div>
                                 
                                 
                                 
                                <h3>기획배경</h3>
                                 <p>
임신과 출산 이후 일부 여성들은 주요우울증 발병에 취약해집니다. <br> 산모의 우울감은 개인적인 문제로 그치는게 아니라 자녀의 인지적 발달에도 <br>영향을 미치기 때문에 더욱 중요합니다. <br> 팀 도담도담은 양육자의 휴식 시간을 보장하여 육아 스트레스를 줄이고, <br> 아기에게는 즉각적인 반응으로 정서적 안정감과 유대감을 형성할 수 있는 <b> 스마트 IoT요람</b>을 개발했습니다.
<br><br>
<b>도담도담</b> : 어린아이가 탈없이 자라는 모양</p>
                                 <ul class="actions">
                                    <li><a href="#" class="button icon solid fa-file">TOP</a></li>
                                 </ul>
                              </article>

                        </div>

                     <!-- Sidebar -->
                        <div id="sidebar" class="col-4 col-12-medium">
                           <!-- Excerpts -->
                       
                           <!-- Highlights -->
                              <section>
                                 <ul class="divided">
                                    <li>

                                       <!-- Highlight -->
                                          <article class="box highlight">
                                             <header>
                                             
                                                <h3><a href="lactList.do">이달의 수유정보</a></h3>
                                             </header>
                                             <a href="lactList.do" class="image left"><img src="images/mmm.jpg" alt="" /></a>
                                             
                                             <ul class="actions">
                                                <li><a href="lactList.do" class="button icon solid fa-file">통계 보기</a></li>
                                             </ul>
                                          </article>

                                    </li>
                                    <li>

                                       <!-- Highlight -->
                                          <article class="box highlight">
                                             <header>
                                                <h3><a href="calender.do">이달의 건강정보</a></h3>
                                             </header>
                                             <a href="calender.do" class="image left"><img src="images/alonebb.jpg" alt="" /></a>
                                             <p>예방접종 날짜 체크하기</p>
                                             <ul class="actions">
                                                <li><a href="calender.do" class="button icon solid fa-file">통계 보기</a></li>
                                             </ul>
                                          </article>

                                    </li>
                                 </ul>
                              </section>
       <section>
                                 <ul class="divided">
                                    <li>
                                       <!-- Excerpt -->
                                          <article class="box highlight">
                                             <header>
                                                <h3><a href="calender.do">이달의 중요 일정</a></h3>
                                             </header>
                                                                                          <a href="calender.do" class="image left"><img src="images/calendar.jpg" alt="" /></a>
                                             
                                            <p>- 2월 28일 도담이 봄나들이  <br>
															- 3월 2일  폐렴 2차 예방접종</p></p>
															                                             <ul class="actions">
                                                <li><a href="calender.do" class="button icon solid fa-file">일정 보기</a></li>
                                             </ul>
                                          </article>

                                    </li>
                              </section>

                        </div>

                  </div>
               </div>
            </section>

         <!-- Footer -->
            <section id="footer">
               <div class="container">
                  <header>
                     <h2><strong>문의 사항</strong></h2>
                  </header>
                  <div class="row">
                     <div class="col-6 col-12-medium">
                        <section>
                           <form method="post" action="#">
                              <div class="row gtr-50">
                                 <div class="col-6 col-12-small">
                                    <input name="name" placeholder="Name" type="text" />
                                 </div>
                                 <div class="col-6 col-12-small">
                                    <input name="email" placeholder="Email" type="text" />
                                 </div>
                                 <div class="col-12">
                                    <textarea name="message" placeholder="Message"></textarea>
                                 </div>
                                 <div class="col-12">
                                    <a href="#" class="form-button-submit button icon solid fa-envelope">Send Message</a>
                                 </div>
                              </div>
                           </form>
                        </section>
                     </div>
                     <div class="col-6 col-12-medium">
                        <section>
                           <div class="row">
                              <div class="col-6 col-12-small">
                                 <ul class="icons">
                                    <li class="icon solid fa-home">
                                       광주광역시 동구 예술길 <br />
                                        31-15 스마트인재 캠퍼스 3층<br />
                                    
                                    </li>
                                    <li class="icon solid fa-phone">
                                       TEL. 062-655-3509<br/>
                                       FAX. 062-655-3510
                                    </li>
                                    <li class="icon solid fa-envelope">
                                       <a href="">DODAM@smhrd.or.kr</a>
                                    </li>
                                 </ul>
                              </div>
                              <div class="col-6 col-12-small">
                                 <ul class="icons">
                                    <li class="icon brands fa-twitter">
                                       <a href="https://www.smhrd.or.kr/camp">@twitting.DODAM</a>
                                    </li>
                                    <li class="icon brands fa-instagram">
                                       <a href="#">instagram.com/yorami</a>
                                    </li>
                                    <li class="icon brands fa-dribbble">
                                       <a href="#">dribbble.com/DODAM</a>
                                    </li>
                                    <li class="icon brands fa-facebook-f">
                                       <a href="#">facebook.com/DODAM</a>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </section>
                     </div>
                  </div>
               </div>
               <div id="copyright" class="container">
                  <ul class="links">
                     <li>Copyright &copy; 2021 Team DodamDodam. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP & DodamDodam</a></li>
                  </ul>
               </div>
            </section>

      </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
   <div>Icons made by <a href="https://www.flaticon.com/authors/pixel-perfect" title="Pixel perfect">Pixel perfect</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
</html>