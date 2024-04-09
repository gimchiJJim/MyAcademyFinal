<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--	
	ClientDTO loginClient = (ClientDTO)session.getAttribute("loginClient");

	List<ProductDTO> pro = new ArrayList<>();
	pro = ProductDAO.getDAO().selectBestProudct();
	WishDTO redHeart = new WishDTO();
	Integer wishProductNum = 0;
	
	//이 부분 확인하기
	DecimalFormat format = new DecimalFormat("###,###,##0");
	
	
	// 업을 누른 것인지 확인하기 위한 Boolean 변수
	int login = 0;
	int loginMemberNo=0;
	if(loginMember!=null){
		loginMemberNo = loginMember.getMemberNo();
		login = 1;
	}  else{
		login = 0;
	}
--%>

<body>
<!-- Navigation -->
      <nav class="navbar navbar-expand-lg navbar-light bg-white osahan-nav-mid px-0 border-top shadow-sm">
         <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
         </div>
      </nav>
      <!-- Begin Page Content -->
      <!--       social -->
      <ul class="trusted-by bg-white border-bottom">
         
      </ul> 
      <!--       social -->
      <!--       recent -->
      <!--       freelancer projects -->
      <section class="py-5">
         <div class="view_slider recommended">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12">
                     <h3>최신 리뷰</h3>
                     <div class="view recent-slider recommended-slider">
                        <div>
                           <div style="width: 300px" class="inner-slider">
                              <a href="product.html"> </a>
                              <div class="inner-wrapper">
                              <a href="product.html"> </a>
                                 <div class="d-flex align-items-center">
                                    <span class="seller-image">
                                    <svg style="float: right" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15" height="15">
                                      <path style="float: right" fill="currentColor"
                                         d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                                      </path> 
                                    </svg> 
                                    <img style="margin: 50px 10px 25px 10px" src="#">  
                                    <!-- 회원 이름 옆에 회원 이미지 넣기 
                                    <img style="margin: 20px" src="images/omelet.png">
                                    -->
                                    </span>
                                    <!-- 이름과 회원 이미지 사진 누를시 리뷰 쓴 회원 페이지 이동 -->
                                    <!-- 홍길동 부분에 p태그 추가 했는데 추후 다시 없애고, 리뷰 : 재밌어용 부분의 마진도 없앨지 고민 -->
                                    <a href="#"><p>홍길동</p></a>
                                    <!-- 이름 옆에 별점 넣기 - div 안됨 -->
                                    <div style="float: right">
                                    <!--
                                    <svg style="float: right" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15" height="15">
                                      <path style="float: right" fill="currentColor"
                                         d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                                      </path> 
                                    </svg>
                                    --> 
                                    </div>
                                    <!--
                                    <span class="level hint--top level-one-seller">
                                    Level 1 Seller
                                    </span>
                                    -->
                                    </span>
                                 </div>
                                 <!-- 리뷰 누를시 리류 메인 페이지 이동 -->
                                 <a href="product.html">
                                 <h3 style="margin-bottom: -5px">리뷰 : 너무 재밌어용</h3>
                                 </a>
                                 <div class="content-info">
                                    <div class="rating-wrapper">
                                       <span class="gig-rating text-body-2">
                                          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15" height="15">
                                             <path fill="currentColor"
                                                d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                                             </path>
                                             <!-- 이쯤 별점 나오게 하기 -->
                                          </svg>
                                       </span>
                                    </div>
                                 </div>
                                 <div class="footer">
                                 <!-- 따봉 이미지로 바꾸고 본인이 누를 따봉 표시하기(update or select문 사용하기) -->
                                    <i class="fa fa-heart" aria-hidden="true"></i>
                                    <i class="fa fa-heart" aria-hidden="true"></i> 
                                    <!-- 하트 옆에 리뷰의 댓글 달린 갯수 넣기(안넣어도 좋음) - 이미지 이동 도움 필요 -->
                                    <i style="float: left" class="fa fa-heart" aria-hidden="true"></i>
                                 </div>
                              </div>
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--       freelancer projects -->
      <!--       recent -->
      <section class="py-5">
         <div class="view_slider recommended">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12">
                     <h3>인기 TV1</h3>
                     <div class="view recent-slider recommended-slider">
                        <div>
                           <a href="product-detail.html">
                           <img style="height: 300px" class="img-fluid" src="images/list/v1.png" />
                           </a>
                           <div class="inner-slider"> 
                                
                           </div> 
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--       recent -->
      <!--       services-->
      <section class="py-5">
         <div class="view_slider recommended">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12">
                     <h3>인기 TV2</h3>
                     <div class="view recent-slider recommended-slider">
                        <div>
                           <a href="product-detail.html">
                           <img style="height: 300px" class="img-fluid" src="images/list/v1.png" />
                           </a>
                           <div class="inner-slider">
                                
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--       services-->
      <!--       testimonials -->
      <section class="py-5">
         <div class="view_slider recommended">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12">
                     <h3>인기 TV3</h3>
                     <div class="view recent-slider recommended-slider">
                        <div>
                           <a href="product-detail.html">
                           <img style="height: 300px" class="img-fluid" src="images/list/v1.png" />
                           </a>
                           <div class="inner-slider">
                                
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--       testimonials -->
      <!--       guides  -->
      <section class="py-5">
         <div class="view_slider recommended">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12">
                     <h3>인기 TV4</h3>
                     <div class="view recent-slider recommended-slider">
                        <div>
                           <a href="product-detail.html">
                           <img style="height: 300px" class="img-fluid" src="images/list/v1.png" />
                           </a>
                           <div class="inner-slider">
                                
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--       guides  -->
      <!-- get started -->
      <div>
         <div class="get-started">
            <div class="content">
               <h2>★714,349,238 개의 평가가</h2> 
            </div>
         </div>
      </div>
<script type="text/javascript">
<%-- 업 이미지 클릭 시 발생되는 이벤트 함수
$("img").filter(".wishHeart").click(function() {
	var productNum = $(this).attr("id");
	var title = $(this).attr("title");
	
	<%-- 로그인 하지 않았을 시 로그인 페이지로 이동
	if(<%=login%>==0){
		location.href="<%=request.getContextPath()%>/template/main.jsp?group=template&worker=login";
	} else {
		 로그인 시 좋아요 눌렀을 시 동작되는 ajax
		$.ajax({
			type: "get",
		    url : "<%=request.getContextPath()%>/template/main_like_action.jsp?reviewNo="+reviewNo+"&title="+title,
		    dataType : "xml",
		    success:function(xmlDoc){
		    	var code = $(xmlDoc).find("code").text();
		    	if(code=="success"){
		    		var titleName = $(xmlDoc).find("title").text();
		    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-red.png") 아직 업 이미지 안 넣음 
		    		$("#"+productNum).attr("title", titleName);
		    	} else{
		    		var titleName = $(xmlDoc).find("title").text();
		    		$("#"+productNum).attr("src", "<%=request.getContextPath()%>/images/icon/heart-black.png") 아직 다운 이미지 안 넣음
		    		$("#"+productNum).attr("title", titleName);
		    	}
		    },
		    error:function(xhr){
		    	alert("[에러] = "+xhr.status);
		    }
		});
	}	
});
--%>
</script>
</body>
</html>