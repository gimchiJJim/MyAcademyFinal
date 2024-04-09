<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
   </head>
   <body>
      <!-- 시작!!!! -->
      <div class="main-page second py-5">
         <div class="container">
            <div class="row">
               <!-- ========================================================================================================================== -->
               <div class="col-lg-4 left">
                  <div class="profile_info">
                     <div class="seller-card">
                     	<!-- 
                        <div>
                           <div class="user-online-indicator is-online " data-user-id="1152855">
                              <i class="fa fa-circle"></i>online
                           </div>
                        </div>
                        <div><a href="#" class="ambassadors-badge">Ambassador</a></div> 
                         -->
                        <div class="user-profile-info">
                           <div>
                              <div class="user-profile-image">
                                 <label class="user-pict">
                                 <img src="<c:url value="/images/user/oneEgg.png"/>"  class="img-fluid user-pict-img">
                                 <a href="#"
                                    class="user-badge-round user-badge-round-med locale-en-us top-rated-seller"></a></label>
                              </div>
                           </div>
                           <div class="user-profile-label">
                              <div class="username-line">
                                 <a href="<c:url value="/mypage/profile"/>" class="seller-link">${member.memberName }</a>
                              </div>
                              <div class="oneliner-wrapper">
                              <!--  -->
                                 <!-- <small class="oneliner">마이뱃지 대표 칭호</small> -->
                                 <div class="ratings-wrapper">
                                    <!-- <p class="rating-text"><strong>5.0</strong> (1k+ reviews)</p> -->
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="buttons-wrapper">
                           <a href="<c:url value="/mypage/profile/updateInfo"/>" class="btn-lrg-standard btn-contact-me js-contact-me js-open-popup-join">내 정보 수정</a>
                           <!-- <div class="btn-lrg-standard btn-white btn-custom-order">Get a Quote</div> -->
                        </div>
                     </div>
                  </div>
                  <div class="seller-profile">

					<div class="linked-accounts">
                        <h4 class="mypagecatrgory">목록</h4>
                        <ul>
                        	<li>
                        		<br>
                        		<p>좋아요</p>
                        		<ul class="nav flex-column">
			                        <li class="nav-item">
			                           <a class="nav-link active" href="<c:url value="/mypage/profile/likeMovie"/>">- 영화</a>
			                        </li>
			                        <li class="nav-item">
			                           <a class="nav-link active" href="<c:url value="/mypage/profile/likeTv"/>">- TV</a>
			                        </li>
			                        <li class="nav-item">
			                           <a class="nav-link active" href="<c:url value="/mypage/profile/likeReview"/>">- 리뷰</a>
			                        </li>
		                    	</ul>
                        	</li>
                        	<br>
                        	
                        	<li>
                        		<p>내 활동</p>
                        		<ul class="nav flex-column">
			                        <li class="nav-item">
			                           <a class="nav-link active" href="<c:url value="/mypage/profile/writeReview"/>">- 작성한 리뷰</a>
			                        </li>
		                    	</ul>
		                    	<ul class="nav flex-column">
			                        <li class="nav-item">
			                           <a class="nav-link active" href="<c:url value="/mypage/profile/writeMoon"/>">- 작성한 문의글</a>
			                        </li>
		                    	</ul>
		                    	<ul class="nav flex-column">
			                        <li class="nav-item">
			                           <a class="nav-link active" href="<c:url value="/mypage/profile/myevent"/>">- 참여한 이벤트</a>
			                        </li>
		                    	</ul>
		                    	<ul class="nav flex-column">
			                        <li class="nav-item">
			                           <a class="nav-link active" href="<c:url value="/mypage/profile/mybadge"/>">- 마이 뱃지</a>
			                        </li>
		                    	</ul>
                        	</li>
                        	<br>
                        	<br>
                        
                        	<li>
                        		<a href="<c:url value="/mypage/profile/resign"/>">탈퇴하기</a>
                        	</li>
	                        
                        </ul>
                     </div>
                
                  </div>
               </div>
               <!-- ========================================================================================================================== -->
               <div class="col-lg-8 right">
				  <div class="d-flex align-items-center justify-content-between mb-4">
                        <p class="top3">인생 작품 top3 <small><span></span><span></span></small> </p>
                         <a href="#">수정하기</a>
                     </div>
	                  
                  <div class="recommended">
                     <div class="row">
                        <div class="col-md-4">
                           <div>
                              <a href="#">
                              <img class="imgMyfavorite" src="#" />
                              </a>
                              <a href="#">
	                              <div class="favoriteTitle">
	                              	작품 제목
	                              </div>
                              </a>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div>
                              <a href="#">
                              <img class="imgMyfavorite" src="#" />
                              </a>
                              <a href="#">
	                              <div class="favoriteTitle">
	                              	작품 제목
	                              </div>
                              </a>
                        </div>
                        </div>
                        <div class="col-md-4">
                           <div>
                              <a href="#">
                              <img class="imgMyfavorite" src="#" />
                              </a>
                              <a href="#">
	                              <div class="favoriteTitle">
	                              	작품 제목
	                              </div>
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="review-section">
                     <div class="d-flex align-items-center justify-content-between mb-4">
                        <h4 class="m-0">최근 작성한 리뷰 <small><span class="star-rating-s15"></span><span><span
                           class="total-rating-out-five header-average-rating"
                           data-impression-collected="true">5</span></span><span><span
                           class="total-rating header-total-rating"
                           data-impression-collected="true">(리뷰 개수)</span></span></small> </h4>
                         <a href="<c:url value="/mypage/profile/writeReview"/>">더보기</a>
                     </div>
                     
                  </div
                  >
                  <div class="review-list">
                     <ul>
                        <li>
                           <div class="d-flex">
                              <div class="left">
                                 <span>
                                 <img
                                    src="#"
                                    class="profile-pict-img img-fluid" alt="">
                                 </span>
                              </div>
                              <div class="right">
                                 <h4>
                                    작성 작품명
                                    <span class="gig-rating text-body-2">
                                       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1792 1792" width="15"
                                          height="15">
                                          <path fill="currentColor"
                                             d="M1728 647q0 22-26 48l-363 354 86 500q1 7 1 20 0 21-10.5 35.5t-30.5 14.5q-19 0-40-12l-449-236-449 236q-22 12-40 12-21 0-31.5-14.5t-10.5-35.5q0-6 2-20l86-500-364-354q-25-27-25-48 0-37 56-46l502-73 225-455q19-41 49-41t49 41l225 455 502 73q56 9 56 46z">
                                          </path>
                                       </svg>
                                      별점
                                    </span>
                                 </h4>
                                 <div class="country d-flex align-items-center">
                                    <div class="country-name font-accent">카테고리</div>
                                 </div>
                                 <div class="review-description">
                                    <p>
                                       댓글 내용
                                    </p>
                                 </div>
                                 <span class="publish py-3 d-inline-block w-100">댓글 작성 날짜</span>
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
   </body>
</html>