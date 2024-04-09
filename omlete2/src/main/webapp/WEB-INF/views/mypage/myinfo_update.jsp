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
			                           <a class="nav-link active" href="#">- 참여한 이벤트</a>
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
	               <div class="shadow-sm rounded bg-white mb-3">
                     <div class="box-title border-bottom p-3">
                        <h6 class="m-0">회원 정보 수정</h6>
                        <!-- <p class="mb-0 mt-0 small">회원 정보 수정 사항 페이지 입니다. </p> -->
                     </div>
                     <div class="box-body p-3">
                        <form class="js-validate" novalidate="novalidate">
                           <div class="row">
                              <!-- Input -->
                              <div class="col-sm-6 mb-2">
                                 <div class="js-form-message">
                                    <label id="nameLabel" class="form-label">
                                    아이디
                                    <span class="text-danger">*</span>
                                    </label>
                                    <div class="form-group">
                                       <input type="text" class="form-control" name="name" value="${memberId }"  aria-label="Enter your name" required="" aria-describedby="nameLabel" data-msg="Please enter your name." data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              <!-- Input -->
                              <div class="col-sm-6 mb-2">
                                 <div class="js-form-message">
                                    <label id="locationLabel" class="form-label">
                                    비밀번호
                                    <span class="text-danger">*</span>
                                    </label>
                                    <div class="form-group">
                                       <input type="text" class="form-control" name="location" value="${memberPasswd }"  aria-label="Enter your location" required="" aria-describedby="locationLabel" data-msg="Please enter your location." data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              <!-- Input -->
                              <div class="col-sm-6 mb-2">
                                 <div class="js-form-message">
                                    <label id="usernameLabel" class="form-label">
                                    회원 이름
                                    <span class="text-danger">*</span>
                                    </label>
                                    <div class="form-group">
                                       <input type="text" class="form-control" name="username" value="${memberName }"  aria-label="Enter your username" required="" aria-describedby="usernameLabel" data-msg="Please enter your username." data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                               
                           </div>
                           <div class="row">
                              
                             <!-- Input -->
                              <div class="col-sm-6 mb-2">
                                 <div class="js-form-message">
                                    <label id="websiteLabel" class="form-label">
                                    닉네임
                                    <span class="text-danger">*</span>
                                    </label>
                                    <div class="form-group">
                                       <input class="form-control" type="url" name="website" value="${memberNickname }"  aria-label="Enter your website" required="" aria-describedby="websiteLabel" data-msg="Password enter a valid website" data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              
                           </div>
                           <div class="row">
                              
                             <!-- Input -->
                              <div class="col-sm-6 mb-2">
                                 <div class="js-form-message">
                                    <label id="websiteLabel" class="form-label">
                                    전화번호
                                    <span class="text-danger">*</span>
                                    </label>
                                    <div class="form-group">
                                       <input class="form-control" type="url" name="website" value="${memberPhone }"  aria-label="Enter your website" required="" aria-describedby="websiteLabel" data-msg="Password enter a valid website" data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              
                           </div>
                           <div class="row">
                              <!-- Input -->
                              <div class="col-sm-6 mb-2">
                                 <div class="js-form-message">
                                    <label id="emailLabel" class="form-label">
                                    이메일 주소
                                    <span class="text-danger">*</span>
                                    </label>
                                    <div class="form-group">
                                       <input type="email" class="form-control" name="email" value="${memberEmail }"  aria-label="Enter your email address" required="" aria-describedby="emailLabel" data-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              
                           </div>
                           
                        </form>
                     </div>
                  </div>
                  
                  <div class="mb-3 text-right">
                     <button type="submit" class="btn btn-outline-success">취소</button>
                     <button type="submit" class="btn btn-success">수정</button>
                  </div>   
               </div>
            </div>
         </div>
      </div>
      
   </body>
</html>