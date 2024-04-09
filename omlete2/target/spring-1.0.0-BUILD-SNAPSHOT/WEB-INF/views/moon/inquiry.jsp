<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <body>


      <!-- Inner Header -->
      <section class="section-padding bg-dark py-5 inner-header">
         <div class="container">
            <div class="row">
               <div class="col-md-12 text-center">
                  <h1 class="mt-0 mb-3 text-white">1:1 문의</h1>
                  <div class="breadcrumbs">
                     <p class="mb-0 text-white"><span class="text-success">문의하신 내용은 고객센터에서 확인 후 영업일 기준 1~3일 이내에 답변 드리도록 할게요.
						<br>* 운영 시간: 평일 10:00 ~ 18:00 (주말, 공휴일 제외)</br></span></p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- 몸체 -->
      <!-- End Inner Header -->
      <!-- Contact Us -->
      <section class="py-5 bg-white">
       <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 section-title text-left mb-4">
                  <h2>문의 등록</h2>
               </div>
               
               
               
               <form class="col-lg-12 col-md-12" name="sentMessage">
                <div class="homepage-search-form">
                        <div class="form-row">
                           <div class="col-lg-3 col-md-3 col-sm-12 form-group">
                              <div class="location-dropdown">
                                 <i class="icofont-location-arrow"></i>
                           		 <label>문의제목<span class="text-danger">*</span></label>
                                 <select class="custom-select form-control border-0 shadow-sm form-control-lg">
                                    <option> </option>
                                    <option> 로그임/계정관리 </option>
                                    <option> 이벤트 </option>
                                    <option> 신고 </option>
                                    <option> 탈퇴 </option>
                                    <option>사용문의</option>
                                    <option> 기타 </option>
                                 </select>
                              </div>
                           </div>
                        </div>
                  </div>
               
               
               
                  <div class="row">
                     <div class="control-group form-group col-lg-4 col-md-4">
                        <div class="controls">
                           <label>작성자 <span class="text-danger">*</span></label>
                           <input type="text" class="form-control" required>
                           <td align="right">
								<input type="checkbox" name="is_secret" id="is_secret_on" onclick="rankup_board.check_mantoman_style(this, 'normal')"><label for="is_secret_on">비밀글</label>
							</td>
                        </div>
                     </div>
                  </div>
                  <div class="control-group form-group">
                     <div class="controls">
                        <label>문의 내용 <span class="text-danger">*</span></label>
                        <textarea rows="10" cols="100" class="form-control"></textarea>
                     </div>
                  </div>
                  <button type="submit" class="btn btn-success">제출</button>
               </form>
            </div>
         </div>
      </section>
      
   </body>
</html>