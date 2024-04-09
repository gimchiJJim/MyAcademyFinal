<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
   <body>
      <!-- Login --> 
      <div class="bg-white">
         <form id="loginForm" name="loginForm" class="form"  method="post">
         <div class="container">
            <div class="row justify-content-center align-items-center d-flex vh-100">
               <div class="col-lg-4 mx-auto">
                  <div class="osahan-login py-4">
                     <div class="text-center mb-4">
                         <img src="<c:url value="/images/logo/omlete_logo.png"/>" style="width: 200px; height: auto;"></a>
                    <h5 class="font-weight-bold mt-3">로그인</h5>
                      <!--  <p class="text-muted">로그인</p> -->
                     </div>
                     <!-- <form action="index.html">  -->
                        <div class="form-group">
                           <label class="mb-1">아이디</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-account position-absolute"></i>
                              <input id="id" type="text" class="form-control" name="memberId" value="${memberId}" placeholder="아이디를 입력하세요" aria-label="default input example">
                           </div>
                        </div>
                        <div class="form-group">
                           <label class="mb-1">비밀번호</label>
                           <div class="position-relative icon-form-control">
                              <i class="mdi mdi-key-variant position-absolute"></i>
                              <input id="passwd" name="memberPasswd" type="password" class="form-control" placeholder="비밀번호를 입력하세요" aria-label="default input example">
                           </div>
                           <div id="message"class="mt-5 mb-0 text-danger">${message }</div>
                        </div>
                        <button class="btn btn-success btn-block text-uppercase" type="button" id="login_btn" class="btn" onclick="memberLogin();"> 로그인 </button>
                        <div class="text-center mt-3 border-bottom pb-3">
                            <!-- <hr class="css-1x1brjf e1io9utx0"> -->
                        </div>
                        <div class="py-3 d-flex align-item-center">
                           <a href="<c:url value="/login/forgot"/>"> 아이디/비밀번호찾기 </a>
                        </div>
                           <span class="ml-auto"> 새로운 계정 <a href="<c:url value="/login/register"/>"> 회원가입 </a></span>
                  </div>
               </div>
            </div>
         </div>
      	</form>
      </div>
      <script type="text/javascript">
      loginForm.memberId.focus();
      function memberLogin(){
    	  
		if ( loginForm.memberId.value == "" ) {
			alert("아이디를 입력하십시요.");
			f.userid.focus();
			return;
		} 
		if ( loginForm.memberPasswd.value == "" ) {
			alert("비밀번호를 입력하십시요.");
			f.memberPassword.focus();
			return;
		}	
    		
			loginForm.action = "<c:url value="/login/member"/>";
			loginForm.submit();
      }
      
		/*
		$("#join_btn").click(function() {
			location.href="<c:url value="/join/membe"/>";
		});
		$("#find_btn").click(function() {
			location.href="<c:url value="/member_find"/>";
		});
		*/
</script>
    </body>   
</html>