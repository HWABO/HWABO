<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}"
	scope="application" />
<c:set var="RESOURCES_PATH" value="${CONTEXT_PATH}/resources"
	scope="application" />
<!DOCTYPE html>
<html lang="kr">
    <head>
        <link rel="icon" type="image/x-icon" href="/hwabo/resources/assets/img/favicon.png" />
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/hwabo/resources/maincss/css/welcome.css" rel="stylesheet">
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">HWABO</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="javascript:location.href='mvlogin.do';">로그인</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="javascript:location.href='mvsign.do'">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="javascript:location.href='gnview.do'">임시테이블연결용</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="javascript:location.href='modal.do'">모달테스트</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="javascript:location.href='logout.do'">${sessionScope.uname}${sessionScope.ucode}님 로그아웃</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    
                    <div class="col-lg-7 col-sm-10" >
                        <div style="position: relative; max-width: 100%; padding-bottom: 76.25%; height: 0;">
                            <img width="900px" height=auto src="/hwabo/resources/maincss/img/welcome/index_img2.png" style="position: absolute; position: absolute; top: 0; left: 0; width: 100%; "></img>
                            </div>
                        
                    </div>

                    <div class="col-lg-5 align-self-center" >
                        <h1 class="text-uppercase text-white font-weight-bold" style="font-size:2.5em">쉽고 편리한 협업툴 <br>최고의 협업툴<br> HWABO</h1>
                        <p class=" font-weight-light mb-4 text-white-75">쉽고 편리한 온택트 협업툴 HWABO에서는 다양한 기능을 지원하고 있습니다  지금 시작해보세요!
                        </p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" style=" font-size:1em" href="javascript:location.href='mvlogin.do';">지금 시작하기</a>

                        <hr class="divider my-4" />
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="mt-0 font-weight-bold" style="margin-bottom:15px;">데모영상</h2>
                        <div style="position: relative; max-width: 100%; padding-bottom: 56.25%; height: 0;">
                            <iframe width="720" height="480" src="https://www.youtube.com/embed/vRXZj0DzXIA?" frameborder="0"  
                            allowfullscreen="" style="position: absolute; position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe>
                            
                            </div>

                        <hr class="divider light my-4" />
                        <p class="text-50 mb-4">'아이스크림'은 제목처럼 무더운 여름에 최적화된 팝 장르의 곡이다. 
                            '겉으로는 차가워 보이지만 알고 보면 달콤하다'는 의미를 아이스크림에 비유, 톡톡 튀는 멜로디로 풀어낸 개성 넘치는 노래다. </p>
                        <a class="btn btn-dark btn-xl js-scroll-trigger" href="#services">Get Started!</a>
                    </div>
                </div>
            </div>
        </section>

        <section class="page-section bg-primary" id="about">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <ul id="tabs" style="list-style:none;" >  
                            <li class="nav-item" style="float:left;margin-right:10px;"><a href="#" title="tab1">팀생성</a></li>
                            <li class="nav-item" style="float:left;margin-right:10px;"><a href="#" title="tab2">일정관리</a></li>
                            <li class="nav-item" style="float:left;margin-right:10px;"><a href="#" title="tab3">채팅</a></li>
                        </ul>
                        <br>
                        <div id="content1"> 
                            <div id="tab1">
                                <h2>Lorem ipsum sit amet</h2>
                                <img width="60%" height=auto src="/hwabo/resources/maincss/img/welcome/web_development__flatline.svg"></img>
                                <p>Praesent risus nisi, iaculis nec condimentum vel, rhoncus vel dolor. Aenean nisi lectus, varius nec tempus id, dapibus non quam.</p>
                            </div>
                            <div id="tab2">
                                <h2>Vivamus fringilla suscipit justo</h2>
                                 <img width="60%" height=auto src="/hwabo/resources/maincss/img/welcome/scrum_board_flatline.svg"></img>
                                <p>Aenean dui nulla, egestas sit amet auctor vitae, facilisis id odio. Donec dictum gravida feugiat.</p>   
                            </div>
                            <div id="tab3">
                                <h2>Phasellus non nibh</h2>
                                 <img width="60%" height=auto src="/hwabo/resources/maincss/img/welcome/data_organization_flatline.svg"></img>
                                <p>Non erat laoreet ullamcorper. Pellentesque magna metus, feugiat eu elementum sit amet, cursus sed diam. Curabitur posuere porttitor lorem, eu malesuada tortor faucibus sed.</p>
                            </div>
                            <div id="tab4">
                                <h2>Cum sociis natoque penatibus</h2>
                                <p>Magnis dis parturient montes, nascetur ridiculus mus. Nullam ac massa quis nisi porta mollis venenatis sit amet urna. Ut in mauris velit, sed bibendum turpis.</p>  
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section" id="services" style="background-color:rgba(248, 249, 252)">
                <h2 class="text-center mt-0 font-weight-bold" >화보 주요 기능</h2>
                <hr class="divider my-4" />
                <center>
                <div class="row col-lg-9 text-center">
                    <div class="col-lg-3 col-md-6 text-center" style="border:solid 3px rgba(248, 249, 252);background-color:rgba(66, 187, 186, 0.2);">
                        <div class="mt-5">
                            <img class="mb-4 text-primary mb-4" style="margin-bottom:0.3em" src="/hwabo/resources/maincss/img/welcome/web_development__flatline.svg"></img>
                            <h3 class="h4 mb-2 font-weight-bold">프로젝트 관리하기</h3>
                            <p class="text-muted mb-4">Our themes are updated regularly to keep them bug free!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center" style="border:solid 3px rgba(248, 249, 252);background-color:rgba(66, 187, 186, 0.2);">
                        <div class="mt-5">
                            <div class="col-lg-3 col-md-6 text-center" ></div>
                            <img class="mb-4 text-primary mb-4" style="margin-bottom:0.3em" src="/hwabo/resources/maincss/img/welcome/completed_task__flatline.svg"></img>
                            <h3 class="h4 mb-2 font-weight-bold">업무 체크하기</h3>
                            <p class="text-muted mb-0">All dependencies are kept current to keep things fresh.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center" style="border:solid 3px rgba(248, 249, 252);background-color:rgba(66, 187, 186, 0.2);">
                        <div class="mt-5">
                            <img class="mb-4 text-primary mb-4" style="margin-bottom:0.3em" src="/hwabo/resources/maincss/img/welcome/report_analysis__flatline.svg"></img>
                            <h3 class="h4 mb-2 font-weight-bold">업무 모아보기</h3>
                            <p class="text-muted mb-0">You can use this design as is, or you can make changes!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center" style="border:solid 3px rgba(248, 249, 252);background-color:rgba(66, 187, 186, 0.2);">
                        <div class="mt-5">
                            <img class="mb-4 text-primary mb-4" style="margin-bottom:0.3em" src="/hwabo/resources/maincss/img/welcome/chat_flatline.svg"></img>
                            <h3 class="h4 mb-2 font-weight-bold">팀원과 소통하기</h3>
                            <p class="text-muted mb-0">Is it really open source if it's not made with love?</p>
                        </div>
                    </div>
            </div>
        </center>    

        </section>
        <!-- Portfolio--> 
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/1.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/1.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/2.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/2.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">일정관리</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/3.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/3.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">할일 작성</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/4.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/4.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">Project Name</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/5.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/5.jpg" alt="" />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">채팅하기</div>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="assets/img/portfolio/fullsize/6.jpg">
                            <img class="img-fluid" src="assets/img/portfolio/thumbnails/6.jpg" alt="" />
                            <div class="portfolio-box-caption p-3">
                                <div class="project-category text-white-50">Category</div>
                                <div class="project-name">모아보기</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Call to action-->
        <section class="page-section text-white mymy">
            <div class="container text-center ">
                <h2 class="mb-4 font-weight-bold">협업툴 지금 바로 시작하세요!<br> HWABO</h2>
                <a class="btn btn-light btn-xl" href="javascript:location.href='sign.do'">시작하기</a>
            </div>
        </section>
     <!--    Contact
        <section class="page-section" id="contact">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider my-4" />
                        <p class="text-muted mb-5">Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible!</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>+1 (555) 123-4567</div>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
                        <a class="d-block" href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a>
                    </div>
                </div>
            </div>
        </section>  -->
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container"><div class="small text-center text-muted">Copyright © 2020 - Start Bootstrap</div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <script src="http://code.jquery.com/jquery-1.6.3.min.js"></script>
<script>
$(document).ready(function() {
	$("#content1 div").hide(); // Initially hide all content
	$("#tabs li:first").attr("id","current"); // Activate first tab
	$("#content1 div:first").fadeIn(); // Show first tab content
    
    $('#tabs a').click(function(e) {
        e.preventDefault();        
        $("#content1 div").hide(); //Hide all content
        $("#tabs li").attr("id",""); //Reset id's
        $(this).parent().attr("id","current"); // Activate this
        $('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
    });
})();
</script>
    </body>
</html>
