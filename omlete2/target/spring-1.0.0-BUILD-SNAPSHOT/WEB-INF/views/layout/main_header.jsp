<%@page import="omlete.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 헤더 시작 -->
<nav class="navbar navbar-expand-lg navbar-light topbar static-top shadow-sm bg-white osahan-nav-top px-0">
   <div class="container">
      <!-- Sidebar Toggle (Topbar) -->
      <a class="navbar-brand" href="<c:url value="/"/>"><img src="<c:url value="/images/logo/omlete_logo.png"/>" alt=""></a>
      <!-- Topbar Search -->
      <div class="container">
	      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	      	<span class="navbar-toggler-icon"></span>
	      </button> 
	      <div class="collapse navbar-collapse" id="navbarResponsive">
	         <ul class="navbar-nav">
	            <li class="nav-item dropdownx">
	               <a style="padding-right: 1.5rem" class="nav-link" href="about.html">영화</a>
	            </li>
	            <li class="nav-item">
	               <a style="padding-right: 1.5rem" class="nav-link" href="about.html">TV</a>
	            </li>
	         </ul>
	      </div>
	      <!-- Topbar Navbar -->
	      <ul class="navbar-nav align-items-center ml-auto">
	         <li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications d-sm-none">
	            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            <i class="fa fa-search fa-fw"></i>
	            </a>
	            <!-- Dropdown - Messages -->
	            <div class="dropdown-menu dropdown-menu-right p-3 shadow-sm animated--grow-in" aria-labelledby="searchDropdown">
	               <form class="form-inline mr-auto w-100 navbar-search">
	                  <div class="input-group">
	                     <input type="text" class="form-control bg-light border-0 small" placeholder="Find Services..." aria-label="Search" aria-describedby="basic-addon2">
	                     <div class="input-group-append">
	                        <button class="btn btn-primary" type="button">
	                        <i class="fa fa-search fa-sm"></i>
	                        </button>
	                     </div>
	                  </div>
	               </form>
	            </div>
	         </li>
	         <form class="d-none d-sm-inline-block form-inline mr-auto my-2 my-md-0 mw-100 navbar-search">
	         	<div class="input-group">
		            <input type="text" class="form-control bg-white small" placeholder="Find Services..." aria-label="Search" aria-describedby="basic-addon2">
		            <div class="input-group-append">
		               <button class="btn btn-success" type="button">
		               	<i class="fa fa-search fa-sm"></i>
		               </button>
		            </div>
	         	</div>
	      	 </form>
	         <li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
	            <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up" aria-labelledby="navbarDropdownAlerts"></div>
	         </li>
	         <c:choose><%-- //비로그인 상태의 사용자인 경우 --%>
	         	<c:when test="${empty(loginMember) }">
	         		<li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
	            	<!-- 로그인 -->
			            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
			            	onclick="location.href='<c:url value="/login/member"/>';">
			            	로그인
			            </a>
		        	</li>
		         	<li class="nav-item dropdown no-arrow no-caret dropdown-user"> 
		            <!-- 회원가입 -->
			            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
			            	onclick="location.href='<c:url value="/login/register"/>';">
			            	회원가입
			            </a>
	         	</c:when>
	         	<c:otherwise><%-- 로그인 상태의 사용자인 경우 --%>
		         	<li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
		            <!-- 로그아웃 -->
			            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
			            	onclick="location.href='<c:url value="/main/main_body"/>';">
			            	로그아웃
			            </a>
		         	</li>
		         	<li class="nav-item dropdown no-arrow no-caret mr-3 dropdown-notifications">
			            <!-- 마이페이지 -->
			            <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
			            	onclick="location.href='<c:url value="/mypage/profile"/>';">
			            	내정보
			            </a>
			        </li>
		         	<c:if test="${loginMember.memberStatus == 9} }">
			         	<li class="nav-item dropdown no-arrow no-caret dropdown-user">
		            		<!-- 관리자 페이지 생기면 연결하기 -->
					        <a class="btn btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownMessages" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
				            	onclick="location.href='<c:url value="#"/>';">
				            	<img alt="" src="<c:url value="/images/member_profile.svg"/>">
				            </a>
				        </li>
			        </c:if>
	         	</c:otherwise>
	         </c:choose>
		     
	      </ul>
   	  </div>
   </div>
</nav>
