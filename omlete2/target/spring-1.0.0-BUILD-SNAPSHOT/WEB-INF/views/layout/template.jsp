<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Gurdeep singh osahan">
<meta name="author" content="Gurdeep singh osahan">
<!-- Favicon Icon -->
<link rel="icon" type="image/png" href="<c:url value="/vendor/images/fav.svg"/>">
<!-- Bootstrap core CSS -->
<link type="text/css"  href="<c:url value="/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
<!-- Font Awesome-->
<link type="text/css" href="<c:url value="/vendor/fontawesome/css/font-awesome.min.css"/>" rel="stylesheet">
<!-- Material Design Icons -->
<link type="text/css"  href="<c:url value="/vendor/icons/css/materialdesignicons.min.css"/>" media="all" rel="stylesheet" type="text/css">
<!-- Slick -->
<link type="text/css" href="<c:url value="/vendor/slick-master/slick/slick.css"/>" rel="stylesheet" type="text/css">
<!-- Lightgallery -->
<link type="text/css" href="<c:url value="/vendor/lightgallery-master/dist/css/lightgallery.min.css"/>" rel="stylesheet">
<!-- Select2 CSS -->
<link type="text/css" href="<c:url value="/vendor/select2/css/select2-bootstrap.css"/>" />
<link type="text/css" href="<c:url value="/vendor/select2/css/select2.min.css"/>" rel="stylesheet">
<!-- Custom styles for this template -->
<link type="text/css" href="<c:url value="/css/style.css"/>" rel="stylesheet">

<!-- 뱃지 부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />


<title>Omlete</title>
</head>
<body>
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	 
	<script src="<c:url value="/vendor/jquery/jquery.min.js"/>"></script>
	
    <script src="<c:url value="/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="<c:url value="/js/jqBootstrapValidation.js"/>"></script>
    <script src="<c:url value="/js/contact_me.js"/>"></script>
    <!-- Slick -->
    <script src="<c:url value="/vendor/slick-master/slick/slick.js"/>" type="text/javascript" charset="utf-8"></script>
    <!-- lightgallery -->
    <script src="<c:url value="/vendor/lightgallery-master/dist/js/lightgallery-all.min.js"/>"></script>
    <!-- select2 Js -->
    <script src="<c:url value="/vendor/select2/js/select2.min.js"/>"></script>
    <!-- Custom -->
    <script src="<c:url value="/js/custom.js"/>"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>