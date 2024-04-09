<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
<%-- 
.review-content {
	position: relative;
	height: 35px;
	padding: 0px;
	border-bottom: 0px;
	margin-bottom: 15px;
}
--%>
.spoiler {
	margin-bottom: 1rem;
}

.main-review-title {
	margin-bottom: 3rem;
}

.col-lg-4 col-md-4 {
	padding-left: 0px;
}
</style>
</head>
<body>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Gurdeep singh osahan">
      <meta name="author" content="Gurdeep singh osahan">
      <title>Omelet - LMS & Freelance Services Marketplace for Businesses HTML Template</title>
      <!-- Favicon Icon -->
      <link rel="icon" type="image/png" href="images/fav.svg">
      <!-- Bootstrap core CSS -->
      <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <!-- Font Awesome-->
      <link href="vendor/fontawesome/css/font-awesome.min.css" rel="stylesheet">
      <!-- Material Design Icons -->
      <link href="vendor/icons/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css">
      <!-- Slick -->
      <link href="vendor/slick-master/slick/slick.css" rel="stylesheet" type="text/css">
      <!-- Lightgallery -->
      <link href="vendor/lightgallery-master/dist/css/lightgallery.min.css" rel="stylesheet">
      <!-- Select2 CSS -->
      <link href="vendor/select2/css/select2-bootstrap.css" />
      <link href="vendor/select2/css/select2.min.css" rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="css/style.css" rel="stylesheet">
</head>
<body>
   <!-- 헤더 시작 -->
      <!-- 헤더 끝 -->
	  <section class="py-5" style="padding-top: 8rem !important; padding-bottom: 8rem !important;">
         <div class="container">
            <div class="rowNo">
               <div class="col-lg-12 col-md-12 section-title text-left mb-4">
                  <h2 class="main-review-title">리뷰 작성</h2>
               </div>
               <form class="col-lg-12 col-md-12" name="sentMessage">
                  <div class="rowNo">
                     <div style="padding-left: 0px;" class="control-group form-group col-lg-4 col-md-4">
                     <form>
                     <input type="radio" class="comment-choose" value="option1" checked="checked">
                     <label for="option1">명대사</label>
                     <input type="radio" class="comment-choose" value="option2">
                     <label for="option1">짧은 리뷰</label>
                     <input type="radio" class="comment-choose" value="option3">
                     <label for="option1">긴 리뷰</label>
                     </form>
                     <button onclick="clearSelection()">Clear Selection</button>
                     <button type="button" class="spoiler">스포일러 체크</button>
                        <div class="controls">
                           <input placeholder="제목(request로 받기)" type="text" class="form-control" required>
                        </div>
                     </div>
                  </div>
                  <div class="control-group form-group">
                    <header class="review-content">
                     <div class="controls">
                     <!-- <label>리뷰 <span class="text-danger">*</span></label> -->
                        <textarea placeholder="이 작품에 대한 생각을 자유롭게 표현해주세요." rows="10" cols="100" class="form-control"></textarea>
                     </div>
                    </header>
                  </div>
                  <button type="submit" class="btn btn-cancel">취소</button><!-- 누를시 이전 페이지로 이동 -->
                  <button type="submit" class="btn btn-success">저장</button><!-- 누를시 저장이 되고 이전 페이지로 이동 or 내가 쓴 리뷰 페이지 보기 -->
               </form>
            </div>
         </div>
      </section>
      <!-- get started -->
      <!-- 풋터 시작 -->
      <!-- footer-->
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
      <script>
      var beforeChecked = -1;
 
      $(function(){
         $(document).on("click", "input[type=radio]", function(e) {
            var index = $(this).parent().index("label");
    
            if(beforeChecked == index) {
    
            beforeChecked = -1;
    
            $(this).prop("checked", false);
    
            }else{
    
            beforeChecked = index;
    
            }
    
         });
    
		function clearSelection() {
			// 체크된 라디오 버튼의 checked 속성을 false로 설정하여 체크 해제
			document.getElementById("option1").checked = false;
			document.getElementById("option2").checked = false;
			document.getElementById("option3").checked = false;
		}
	  </script>
</body>
</html>