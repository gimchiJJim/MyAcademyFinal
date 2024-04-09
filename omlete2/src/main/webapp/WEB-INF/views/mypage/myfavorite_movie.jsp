<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="main-page best-selling">
         <div class="view_slider recommended pt-5">
            <div class="container">
            	<div><a href="profile.html">&lt;- 뒤로가기</a></div>
                <div class="sorting-div d-flex align-items-center justify-content-between">
                   <p class="mb-2">좋아요한 작품</p>
                   <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        정렬
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                           <button class="dropdown-item" type="button">이름순</button>
                           <button class="dropdown-item" type="button">최근 좋아요순</button>
                        </div>
                  </div>
               </div>
               <h3>영화</h3>
            </div>
            <div class="container">
               <div class="row">
                  <div class="col-md-3">
                     <a href="product-detail.html">
                     	<img class="imgMyfavorite" src="#" />
                     </a>
                  </div>
               </div>
            </div>
         </div>
         <div class="footer-pagination text-center">
            <nav aria-label="Page navigation example">
               <nav aria-label="Page navigation example">
                  <ul class="pagination">
                     <li class="page-item"><a class="page-link" href="#">이전</a></li>
                     <li class="page-item"><a class="page-link" href="#">1</a></li>
                     <li class="page-item"><a class="page-link" href="#">2</a></li>
                     <li class="page-item"><a class="page-link" href="#">3</a></li>
                     <li class="page-item"><a class="page-link" href="#">다음</a></li>
                  </ul>
               </nav>
            </nav>
         </div>
      </div>
</body>
</html>