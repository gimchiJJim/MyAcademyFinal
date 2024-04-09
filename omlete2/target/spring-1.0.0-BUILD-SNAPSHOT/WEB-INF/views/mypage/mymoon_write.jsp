<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<body>
	<div class="py-5">
		<div class="container mx-auto col-md-8">
			<div class="row">
			<!-- Main Content -->
				<div class="col-md-12">
					<div id="syncing">
	                    <!-- Title -->
						<div class="mb-3 mt-4">
							<h4 class="font-weight-semi-bold">내가 작성한 문의글</h4>
						</div>
						<p class="listLength">총 <strong class="num">1</strong>개</p>
						<div class="tableList">
							<table>
								<colgroup>
									<col style="width:80px;">
									<col>
									<col style="width:130px;">
								</colgroup>
								<tbody>
									<tr>
										<td>글번호</td>
										<td class="left">
											<a href="notice1.html">
												<span class="subject">글 제목</span>
											</a>
										</td>
										<td>글 날짜</td>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- End Syncing Accordion -->
					</div>
					<div class="footer-pagination text-center">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
									</a>	
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item active"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>