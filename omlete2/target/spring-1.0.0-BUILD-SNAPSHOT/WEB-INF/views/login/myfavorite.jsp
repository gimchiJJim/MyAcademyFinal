<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<body>
	<div class="bg-white">
		<div class="container">
			<div class="row justify-content-center align-items-center d-flex vh-100">
				<div class="col-lg-4 mx-auto">
					<div class="osahan-login py-4">
						<div class="text-center mb-4">
							<a href="index.html"><img src="images/logo3.png" alt=""></a>
							<h5 class="font-weight-bold mt-3">나의 인생작품</h5>
							<p class="text-muted">나의 인생작을 입력해주세요.</p>
						</div>
						<form action="index.html">
							<div class="form-group">
								<label class="mb-1">검색</label>
								<div class="position-relative icon-form-control">
									<i class="fa-solid fa-magnifying-glass position-absolute"></i>
									<!-- <i class="mdi mdi-account position-absolute"></i> -->
									<input type="검색" class="form-control">
								</div>
							</div>
							<button class="btn btn-success btn-block text-uppercase" type="submit">등록</button>
							<div class="py-3 d-flex align-item-center">
								<a href="<c:url value="/login/member"/>">로그인</a> <span class="ml-auto"> 새로운 계정
									<a href="<c:url value="/login/register"/>"> 회원가입 </a>
								</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>