<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>omlete(Admin)</title>

    <!-- Custom fonts for this template -->
    <link href="vendor_admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/admin.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor_admin/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon">
                    <%--<i class="fas fa-laugh-wink"></i>--%>
                    <img id=logo src="img/omlete.png" width=140px;>
                </div>
                <div class="sidebar-brand-text mx-3"><sup></sup></div>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider">
            <!-- Heading -->
            <div class="sidebar-heading">
                사이트 관리
            </div>
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-film"></i>
                    <span>작품 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="contents.jsp">영화</a>
                        <a class="collapse-item" href="contents.jsp">TV</a>
                    </div>
                </div>
            </li>
            <!-- Nav Item - Utilities Collapse Menu -->
            <hr class="sidebar-divider">
            <li class="nav-item">
                <a class="nav-link" href="member.jsp">
                    <i class="fas fa-user"></i>
                    <span>회원 관리</span></a>
            </li>            

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-bell"></i>
                    <span>공지사항</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">              
                        <a class="collapse-item" href="login.html">공지사항</a>                
                        <a class="collapse-item" href="forgot-password.html">이벤트</a>
                    </div>
                </div>
            </li>
			<hr class="sidebar-divider">
            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="review.jsp">
                    <i class="fas fa-question-circle"></i>
                    <span>1:1 문의</span></a>
            </li>
			<hr class="sidebar-divider">
            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="review.jsp">
                    <i class="fas fa-comments"></i>
                    <span>리뷰 관리</span></a>
            </li>
			<hr class="sidebar-divider">
			<li class="nav-item">
                <a class="nav-link" href="index.jsp">
                    <i class="fas fa-home"></i>
                    <span>메인 페이지</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline"/>
        </ul>
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">작품 추가</h1>
 
                     <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3"></div>
                        <div class="card-body" style= "height: 1000px;">
                        <div class="table-responsive">
							<table id="contentsAddTable">
									<tr>
										<th>타입</th>
										<td>
											<select name="contentsType" id="contentsType" onchange="typeChanege(this)" required>
												<option value="">--선택--</option>
												<option value="movie">영화</option>
												<option value="tv">TV</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>제목(영문)</th>
										<td>
											<input type="text" name="contentsEname" id="contentsEname" size="30" required>
										</td>
									</tr>
									<tr>
										<th>제목</th>
										<td>
											<input type="text" name="contentsName" id="contentsName" size="30" required>
										</td>
									</tr>
									<tr>
										<th>예고편/트레일러</th>
										<td>
											<input type="url" name="trailer" id="trailer" size="30">
										</td>
									</tr>
									<tr>
										<th>포스터</th>
										<td>
											<input type="file" name="poster" id="poster" required>
										</td>
									</tr>
									<tr>
										<th>출연진</th>
										<td>
											<input type="text" name="contentsCast" id="contentsCast" size="30" required>
										</td>
									</tr>
									<tr>
										<th>제작진</th>
										<td>
											<input type="text" name="contentsStaff" id="contentsStaff" size="30" required>
										</td>
									</tr>
									<tr>
										<th>간단 소개</th>
										<td>
											<textarea rows="5" cols="80" maxlength="100"></textarea>
										</td>
									</tr>
									<tr>
										<th>내용</th>
										<td>
											<textarea rows="5" cols="80" maxlength="300"></textarea>
										</td>
									</tr>
									<tr>
										<th>연령 등급</th>
										<td>
											<select name="contentsRating" id="contentsRating" onchange="ratingChange(this)" required>
												<option value="">--선택--</option>
												<%--<%if(contentsType.equals("movie")) { --%>
												<option value="all">전체 관람가</option>
												<option value="twelve">12세 이상 관람가</option>
												<option value="fifthteen">15세 이상 관람가</option>
												<option value="adult">청소년 관람 불가</option>
												<option value="limited">제한 관람가</option>
												<%--<% } else { --%>
												<option value="all">전체 관람가</option>
												<option value="seven">7세 시청가</option>
												<option value="twelve">12세 이상 시청가</option>
												<option value="fifthteen">15세 이상 시청가</option>
												<option value="adult">19세 이상 시청가</option>												
												<%--<% } --%>
											</select>
										</td>
									</tr>
									<tr>
										<th>장르</th>
										<td>
						 				   <select name="contentsGenre" id="contentsGenre" onchange="genreChanege(this)" required>
												<option value="">--선택--</option>
												<%--<%if(contentsType.equlas("movie")) { --%>
												<option value="action">액션</option>
												<option value="comedy">코미디</option>
												<option value="romance">로맨스</option>
												<option value="thriller">스릴러</option>
												<option value="horror">공포</option>
												<option value="fantasy">SF/판타지</option>
												<option value="animation">애니메이션</option>
												<%--<% } else { --%>
												<option value="drama">드라마</option>
												<option value="documentary">다큐멘터리</option>
												<option value="entertainment">예능</option>
												<%--<% } --%>
											</select>
										<%--<%if(contentsType.equals("tv")) { --%>
										</td>
									</tr>
									<tr>
										<th>방송사</th>
										<td>
											<select name="broadcast" id="broadcast" onchange="brodcastChange(this)" required>
												<option value="">--선택--</option>
												<option value="sbs">SBS</option>
												<option value="kbs">KBS</option>
												<option value="mbc">MBC</option>
												<option value="JTBC">JTBC</option>
												<option value="netflix">Netflix</option>
												<option value="tving">TVING</option>
												<option value="coupang">쿠팡플레이</option>
												<option value="disney">Disney+</option>
											</select>
										</td>
									</tr>
									<%--if(contentsType.equals("tv") {) --%>
									<tr>
										<th>방송사 로고</th>
										<td>
											<input type="file" name="brodcastLogo" id="poster" required>
										</td>
									</tr>
									<%-- } --%>
									<tr>
										<%--<% } --%>
										<th>국가</th>
										<td>
											<input type="text" name="country" id="country" size="15" required>
										</td>
									</tr>
									<tr>
										<th>감독</th>
										<td>
											<input type="text" name="contentsDirector" id="contentsDirector" size="15" required>
										</td>
									</tr>
								
									<tr>
										<th>개봉일</th>
										<td>
											<input type="text" name="startDate" id="startDate" size="15" required>
										</td>
									</tr>
										<%--<%if(contentsType.equals("movie")) { --%>
									<tr>
										<th>총 시간</th>
										<td>
											<input type="text" name="runningTime" id="runningTime" size="15" required>
										</td>
									</tr>
										<%--<% } --%>
										<%--<%if(contentsType.equals("tv") {) --%>
									<tr>
										<th>에피소드</th>
										<td>
											<input type="text" name="episode" id="episode" size="15">
										</td>
									</tr>
									<tr>
										<th>시즌</th>
										<td>
											<input type="text" name="season" id="season" size="15">
										</td>
									</tr>
									<tr>
										<th>상영시간</th>
										<td>
											<input type="text" name="runTime" id="runTime" size="15" required>
										</td>
									</tr>
									<tr>
								</table>
                            </div>
                        </div>
                    </div>
               </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor_admin/jquery/jquery.min.js"></script>
    <script src="vendor_admin/bootstrap/js_admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor_admin/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/admin2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor_admin/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor_admin/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>