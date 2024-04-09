<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style type="text/css">
#reviewchoose {
	display: inline-block;
}

#ingichoose {	
	font-size: 20px;
	font-weight: 500;
	border: 1px solid black;
	padding: 5px 12px;
	box-sizing: border-box;
	border-radius: 24px;
}

#choishinchoose {
	font-size: 20px;
	font-weight: 500;
	border: 1px solid black;
	padding: 5px 12px;
	box-sizing: border-box;
	border-radius: 24px;
}

.col-md-6 {
	max-width: 80%;
	margin-left: auto;
    margin-right: auto;
}

.mb-2 {
	margin-left: 125px;
}

#reviewchoose {
	padding-left: 20px;
}

/* writer-image 클래스의 스타일 */
.writer-image {
    display: flex; /* Flexbox 레이아웃 사용 */
    align-items: center; /* 요소들을 세로 중앙 정렬 */
    text-decoration: none; /* 링크의 밑줄 제거 */
    margin-bottom: 20px; /* 하단 여백 추가 */
}

/* writer-full-part 클래스의 스타일 */
.writer-full-part {
    margin-left: 10px; /* 왼쪽 여백 추가 */
}

/* writer-name-part 클래스의 스타일 */
.writer-name-part {
    display: flex; /* Flexbox 레이아웃 사용 */
    align-items: center; /* 요소들을 세로 중앙 정렬 */
}

/* star 클래스의 스타일 */
.star {
    display: flex; /* Flexbox 레이아웃 사용 */
    align-items: center; /* 요소들을 세로 중앙 정렬 */
    margin-left: 10px; /* 왼쪽 여백 추가 */
}

/* 작성 시간을 표시하는 p 태그의 스타일 */
.writer-full-part p:last-child {
    margin-top: 5px; /* 작성 시간과 위 요소 사이의 여백 추가 */
}
/* 테이블 전체 스타일링 */
table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ddd;
}

/* 테이블 헤더 스타일링 */
th {
    background-color: #f2f2f2;
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

/* 테이블 셀 스타일링 */
td {
    border: 1px solid #ddd;
    padding: 8px;
    vertical-align: top; /* 셀 내부 요소를 상단 정렬 */
}

/* 이미지 스타일링 */
.poster-img {
    width: 100px; /* 영화 포스터 이미지의 너비 지정 */
    height: auto;
    display: block; /* 이미지를 블록 요소로 지정하여 수직 중앙 정렬 */
    margin: 0 auto; /* 이미지를 가운데 정렬 */
}

/* 좋아요, 싫어요, wish 이미지 스타일링 */
.rating-images img {
    width: 20px;
    height: 20px;
    margin-right: 5px;
}
#qaSubject {
	font-size: 20px;
}

#qa_write {
   width: 800px;
   margin: 0 auto;
   padding: 40px;
}

.table_review {
   border: 1px solid black;
   border-collapse: collapse;
}

.th_review {
   width: 100px;
   background: yellow;
   color: gray;
   border: 1px solid gray;
   text-align: center;
   font-size: 22px; 
}

.td_review_poster {
   text-align: left;
   border: 1px solid gray;
   width: 20%;
}

.td_review {
   text-align: left;
   border: 1px solid gray;
   width: 15%;
}

.td_writer_image {
   text-align: left;
   border: 1px solid gray;
   width: 10%;
}

#qaContent{
   width: 100%;
   font-size: 18px;
}

#qa_menu {
   text-align: right;
   margin: 7px;
}

#resetBtn {
	height: 100%;
	margin-top: 10px;
	margin-bottom: 7px;
	background-color: rgb(239, 239, 239);
 	color: black;
 	font-weight: bold;
 	border-radius: 5px;
 	border: 1px solid gray;
}

#saveBtn {
	height: 100%;
	margin-top: 10px;
	margin-bottom: 7px;
	background-color: rgb(239, 239, 239);
 	color: black;
 	font-weight: bold;
 	border-radius: 5px;
 	border: 1px solid gray;
}

#poster_image {
	width: 100%;
	height: auto;
}

#writer_image {
	width: 27%;
	height: auto;
	position: relative; /* 이미지의 위치를 상대적으로 설정 */
    left: 50px; /* 왼쪽에서 20px만큼 이동 */
}

/* 테이블 스타일링 */
#last {
    border-collapse: collapse;
    width: 100%;
}
#lastTd {
    border: 1px solid black;
    padding: 8px;
    text-align: center;
}
/* rowspan에 의해 크기가 변경되도록 CSS 수정 */
.rowspan-3 {
    height: 72px; /* 3개의 행의 높이 (24px * 3) */
}

#upBtn {
	height: 20px;
	width: 20px;
}

#downBtn {
	height: 20px;
	width: 20px;
}

#jjimBtn {
	height: 20px;
	width: 20px;
}

#shingoBtn {
	height: 20px;
	width: 20px;
}
</style>
</head>
<body>
<div class="main-page best-selling">
     <div class="view_slider recommended pt-5">
        <div class="container">
           <div class="sorting-div d-flex align-items-center justify-content-between">
              <p style="font-size: 24px; font-weight: 700" class="mb-2">지금 뜨는 코멘트</p> 
              <div class="sorting d-flex align-items-center">
              </div>
           </div>
           <div>
             <ul style="padding: 10px 105px; text-align: left;">
               <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                 <a id="choishinchoose" type="button" href="<c:url value="/review/list?reviewKind=1"/>">명대사</a>
               </li>
               <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                 <a id="choishinchoose" type="button" href="<c:url value="/review/list?reviewKind=2"/>">짧은글</a>
               </li>
               <li id="reviewchoose" style="margin: 0px 8px 0px 0px">
                 <a id="choishinchoose" type="button" href="<c:url value="/review/list?reviewKind=3"/>">긴글</a>
               </li>
             </ul>
           </div>
        </div>
     </div>
</div> 
<div id="qa_write">
	<%-- 파일(리뷰 이미지)을 입력받아 전달하기 위해 form 태그의 enctype 속성값을 반드시 [multipart/form-date]로 설정 --%>
	<table class="table_review">
		<tr>
			<td class="td_writer_image" rowspan="2">
				<div>
					<img id="writer_image" src="images/Poster.png">
				</div>
			</td>
			<td class="td_review" style="width: 70%;">작성자</td><%-- 오른쪽에 별점 넣기 --%> 
			<td class="td_review">별점</td>
		</tr>
		<tr>
			<td class="td_review" colspan="2">
				리뷰 시간
			</td>
		</tr>	
		<tr>
			<td class="td_review_poster" rowspan="3">
				<div>
					<img id="poster_image" src="images/Poster.png">
				</div>
			</td>
			<%--
			<td class="td_review">
				<input type="text" name="qaSubject" id="qaSubject" size="40">
				작품 제목
			</td>
			--%>				
			<td class="td_review" colspan="2">
				제목
			</td>
		</tr>
		<tr>
			<td class="td_review" rowspan="2" colspan="2" style="height: 72px;">
				내용
			</td>
		</tr>
		<tr>
		</tr>	
		<tr>
			<td class="td_review" colspan="2"><%-- 3중에 하나 고르기 --%>
				<div> 
                   <a class="font-weight-bold d-block" href="#">
                   	<button type="button" id="upBtn">
                   		<img class="like" src="<c:url value="/images/like_or_hate/thumbs-up-regular.svg"/>">
                   	</button>
                   	<button type="button" id="downBtn">
                    	<img alt="hate" src="<c:url value="/images/like_or_hate/thumbs-down-regular.svg"/>">
                   	</button>
                   	<button type="button" id="jjimBtn">
                    	<img alt="jjim" src="<c:url value="/images/like_or_hate/heart-regular.svg"/>">
                   	</button>
                   </a>
                </div>
			</td>
			<td class="td_review">
				<a class="font-weight-bold d-block" href="#">
				<button style="margin-right: 10px; display: flex; align-items: center;" type="button" id="shingoBtn">
					<img alt="" src="<c:url value="/images/ellipsis-solid.svg"/>">
				</button>
				</a>
			</td>
		</tr>
	</table>
</div>
<div id="message" style="color: red;"></div>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Contact form JavaScript -->
<!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>
<!-- Slick -->
<script src="vendor/slick-master/slick/slick.js" type="text/javascript" charset="utf-8"></script>
<!-- lightgallery -->
<script src="vendor/lightgallery-master/dist/js/lightgallery-all.min.js"></script>
<!-- select2 Js -->
<script src="vendor/select2/js/select2.min.js"></script>
<!-- Custom -->
<script src="js/custom.js"></script>
</body>
</html>