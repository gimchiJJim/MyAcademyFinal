<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="py-5">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 left">
                  <div class="profile_info">
                     <div class="seller-card">
                     
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
                                 <a href="<c:url value="/mypage/profile"/>" class="seller-link">회원 이름</a>
                              </div>
                              <div class="oneliner-wrapper">
                              <!--  -->
                                 <small class="oneliner">마이뱃지 대표 칭호</small>
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
			                           <a class="nav-link active" href="#">- 작성한 문의글</a>
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
               <main class="col-md-8">
                  <div class="shadow-sm rounded bg-white mb-3">
                     <div class="box-title border-bottom p-3">
                        <h6 class="m-0">회원 정보 수정</h6>
                        <p class="mb-0 mt-0 small">회원 정보 수정 사항 페이지 입니다.
                        </p>
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
                                       <input type="text" class="form-control" name="name" value="id" placeholder="Enter your name" aria-label="Enter your name" required="" aria-describedby="nameLabel" data-msg="Please enter your name." data-error-class="u-has-error" data-success-class="u-has-success">
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
                                       <input type="text" class="form-control" name="location" value="비밀번호" placeholder="Enter your location" aria-label="Enter your location" required="" aria-describedby="locationLabel" data-msg="Please enter your location." data-error-class="u-has-error" data-success-class="u-has-success">
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
                                       <input type="text" class="form-control" name="username" value="이름" placeholder="Enter your username" aria-label="Enter your username" required="" aria-describedby="usernameLabel" data-msg="Please enter your username." data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                               
                           </div>
                           <label class="form-label">
                           생년월일
                           <span class="text-danger">*</span>
                           </label>
                           <div class="row">
                              <!-- Input -->
                              <div class="col-md-6 mb-3 mb-sm-6">
                                 <div class="js-form-message">
                                    <div class="form-group">
                                       <select class="form-control custom-select" required="" data-msg="Please select month." data-error-class="u-has-error" data-success-class="u-has-success">
                                          <option value="birthYearSelect1921">1921</option>
                                          <option value="birthYearSelect1922">1922</option>
                                          <option value="birthYearSelect1923">1923</option>
                                          <option value="birthYearSelect1924">1924</option>
                                          <option value="birthYearSelect1925">1925</option>
                                          <option value="birthYearSelect1926">1926</option>
                                          <option value="birthYearSelect1927">1927</option>
                                          <option value="birthYearSelect1928">1928</option>
                                          <option value="birthYearSelect1929">1929</option>
                                          <option value="birthYearSelect1930">1930</option>
                                          <option value="birthYearSelect1931">1931</option>
                                          <option value="birthYearSelect1932">1932</option>
                                          <option value="birthYearSelect1933">1933</option>
                                          <option value="birthYearSelect1934">1934</option>
                                          <option value="birthYearSelect1935">1935</option>
                                          <option value="birthYearSelect1936">1936</option>
                                          <option value="birthYearSelect1937">1937</option>
                                          <option value="birthYearSelect1938">1938</option>
                                          <option value="birthYearSelect1939">1939</option>
                                          <option value="birthYearSelect1940">1940</option>
                                          <option value="birthYearSelect1941">1941</option>
                                          <option value="birthYearSelect1942">1942</option>
                                          <option value="birthYearSelect1943">1943</option>
                                          <option value="birthYearSelect1944">1944</option>
                                          <option value="birthYearSelect1945">1945</option>
                                          <option value="birthYearSelect1946">1946</option>
                                          <option value="birthYearSelect1947">1947</option>
                                          <option value="birthYearSelect1948">1948</option>
                                          <option value="birthYearSelect1949">1949</option>
                                          <option value="birthYearSelect1950">1950</option>
                                          <option value="birthYearSelect1951">1951</option>
                                          <option value="birthYearSelect1952">1952</option>
                                          <option value="birthYearSelect1953">1953</option>
                                          <option value="birthYearSelect1954">1954</option>
                                          <option value="birthYearSelect1955">1955</option>
                                          <option value="birthYearSelect1956">1956</option>
                                          <option value="birthYearSelect1957">1957</option>
                                          <option value="birthYearSelect1958">1958</option>
                                          <option value="birthYearSelect1959">1959</option>
                                          <option value="birthYearSelect1960">1960</option>
                                          <option value="birthYearSelect1961">1961</option>
                                          <option value="birthYearSelect1962">1962</option>
                                          <option value="birthYearSelect1963">1963</option>
                                          <option value="birthYearSelect1964">1964</option>
                                          <option value="birthYearSelect1965">1965</option>
                                          <option value="birthYearSelect1966">1966</option>
                                          <option value="birthYearSelect1967">1967</option>
                                          <option value="birthYearSelect1968">1968</option>
                                          <option value="birthYearSelect1969">1969</option>
                                          <option value="birthYearSelect1970">1970</option>
                                          <option value="birthYearSelect1971">1971</option>
                                          <option value="birthYearSelect1972">1972</option>
                                          <option value="birthYearSelect1973">1973</option>
                                          <option value="birthYearSelect1974">1974</option>
                                          <option value="birthYearSelect1975">1975</option>
                                          <option value="birthYearSelect1976">1976</option>
                                          <option value="birthYearSelect1977">1977</option>
                                          <option value="birthYearSelect1978">1978</option>
                                          <option value="birthYearSelect1979">1979</option>
                                          <option value="birthYearSelect1980">1980</option>
                                          <option value="birthYearSelect1981">1981</option>
                                          <option value="birthYearSelect1982">1982</option>
                                          <option value="birthYearSelect1983">1983</option>
                                          <option value="birthYearSelect1984">1984</option>
                                          <option value="birthYearSelect1985">1985</option>
                                          <option value="birthYearSelect1986" selected="selected">1986</option>
                                          <option value="birthYearSelect1987">1987</option>
                                          <option value="birthYearSelect1988">1988</option>
                                          <option value="birthYearSelect1989">1989</option>
                                          <option value="birthYearSelect1990">1990</option>
                                          <option value="birthYearSelect1991">1991</option>
                                          <option value="birthYearSelect1992">1992</option>
                                          <option value="birthYearSelect1993">1993</option>
                                          <option value="birthYearSelect1994">1994</option>
                                          <option value="birthYearSelect1995">1995</option>
                                          <option value="birthYearSelect1996">1996</option>
                                          <option value="birthYearSelect1997">1997</option>
                                          <option value="birthYearSelect1998">1998</option>
                                          <option value="birthYearSelect1999">1999</option>
                                          <option value="birthYearSelect2000">2000</option>
                                          <option value="birthYearSelect2001">2001</option>
                                          <option value="birthYearSelect2002">2002</option>
                                          <option value="birthYearSelect2003">2003</option>
                                          <option value="birthYearSelect2004">2004</option>
                                          <option value="birthYearSelect2005">2005</option>
                                          <option value="birthYearSelect2006">2006</option>
                                          <option value="birthYearSelect2007">2007</option>
                                          <option value="birthYearSelect2008">2008</option>
                                          <option value="birthYearSelect2009">2009</option>
                                          <option value="birthYearSelect2010">2010</option>
                                          <option value="birthYearSelect2011">2011</option>
                                          <option value="birthYearSelect2012">2012</option>
                                          <option value="birthYearSelect2013">2013</option>
                                          <option value="birthYearSelect2014">2014</option>
                                          <option value="birthYearSelect2015">2015</option>
                                          <option value="birthYearSelect2016">2016</option>
                                          <option value="birthYearSelect2017">2017</option>
                                       </select>
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              <!-- Input -->
                              <div class="col-sm-4 col-md-2 mb-3 mb-sm-6">
                                 <div class="js-form-message">
                                    <div class="form-group">
                                       <select class="form-control custom-select" required="" data-msg="Please select date." data-error-class="u-has-error" data-success-class="u-has-success">
                                          <option value="birthMonthSelect1" selected="selected">1월</option>
                                          <option value="birthMonthSelect2">2월</option>
                                          <option value="birthMonthSelect3">3월</option>
                                          <option value="birthMonthSelect4">4월</option>
                                          <option value="birthMonthSelect5">5월</option>
                                          <option value="birthMonthSelect6">6월</option>
                                          <option value="birthMonthSelect7">7월</option>
                                          <option value="birthMonthSelect8">8월</option>
                                          <option value="birthMonthSelect9">9월</option>
                                          <option value="birthMonthSelect10">10월</option>
                                          <option value="birthMonthSelect11">11월</option>
                                          <option value="birthMonthSelect12">12월</option>
                                       </select>
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              <!-- Input -->
                              <div class="col-sm-4 col-md-2 mb-3 mb-sm-6">
                                 <div class="js-form-message">
                                    <div class="form-group">
                                       <select class="form-control custom-select" required="" data-msg="Please select year." data-error-class="u-has-error" data-success-class="u-has-success">
                                          <option value="birthDateSelect1" selected="selected">1일</option>
                                          <option value="birthDateSelect2">2일</option>
                                          <option value="birthDateSelect3">3일</option>
                                          <option value="birthDateSelect4">4일</option>
                                          <option value="birthDateSelect5">5일</option>
                                          <option value="birthDateSelect6">6일</option>
                                          <option value="birthDateSelect7">7일</option>
                                          <option value="birthDateSelect8">8일</option>
                                          <option value="birthDateSelect9">9일</option>
                                          <option value="birthDateSelect10">10일</option>
                                          <option value="birthDateSelect11">11일</option>
                                          <option value="birthDateSelect12">12일</option>
                                          <option value="birthDateSelect13">13일</option>
                                          <option value="birthDateSelect14">14일</option>
                                          <option value="birthDateSelect15">15일</option>
                                          <option value="birthDateSelect16">16일</option>
                                          <option value="birthDateSelect17">17일</option>
                                          <option value="birthDateSelect18">18일</option>
                                          <option value="birthDateSelect19">19일</option>
                                          <option value="birthDateSelect20">20일</option>
                                          <option value="birthDateSelect21">21일</option>
                                          <option value="birthDateSelect22">22일</option>
                                          <option value="birthDateSelect23">23일</option>
                                          <option value="birthDateSelect24">24일</option>
                                          <option value="birthDateSelect25">25일</option>
                                          <option value="birthDateSelect26">26일</option>
                                          <option value="birthDateSelect27">27일</option>
                                          <option value="birthDateSelect28">28일</option>
                                          <option value="birthDateSelect29">29일</option>
                                          <option value="birthDateSelect30">30일</option>
                                          <option value="birthDateSelect31">31일</option>
                                       </select>
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              <!-- Input -->
                              <div class="col-sm-4 col-md-2 mb-2">
                                 <div class="js-form-message">
                                    <div class="form-group">
                                       <select class="form-control custom-select" required="" data-msg="Please select your gender." data-error-class="u-has-error" data-success-class="u-has-success">
                                          <option value="genderSelect1" selected="">남자</option>
                                          <option value="genderSelect2">여자</option>
                                       </select>
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
                                       <input class="form-control" type="url" name="website" value="010-1234-5678" placeholder="Enter your website" aria-label="Enter your website" required="" aria-describedby="websiteLabel" data-msg="Password enter a valid website" data-error-class="u-has-error" data-success-class="u-has-success">
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
                                       <input type="email" class="form-control" name="email" value="abc@gmail.com" placeholder="Enter your email address" aria-label="Enter your email address" required="" aria-describedby="emailLabel" data-msg="Please enter a valid email address." data-error-class="u-has-error" data-success-class="u-has-success">
                                    </div>
                                 </div>
                              </div>
                              <!-- End Input -->
                              
                           </div>
                           
                        </form>
                     </div>
                  </div>
                  
                  <div class="mb-3 text-right">
                     <button type="submit" class="btn btn-outline-success">Cancel</button>
                     <button type="submit" class="btn btn-success">Submit</button>
                  </div>
               </main>
            </div>
         </div>
      </div>
</body>
</html>