<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">

	<!-- begin::Head -->
	<head>
	<style type="text/css">
	table, td, tr, th{
	text-align:center;
	}
	</style>
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
	<body class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

		<!-- begin:: Page -->



				<div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">



					


						<div class="kt-portlet kt-portlet--mobile">
									<div class="kt-portlet__head kt-portlet__head--lg">
										<div class="kt-portlet__head-label">
											<span class="kt-portlet__head-icon">
													</span>
												<h3 class="kt-portlet__head-title">
												<b>학력</b>
												</h3>
												<div class="col kt-align-right">
												<pre>																						
												<button type="button" class="btn btn-brand" onclick="openPopUp2()">업데이트</button></pre>
												</div>
										</div>
									</div>



											<div class="kt-portlet__body">
										<form>
										<input type="hidden" name="progNum" value="${LoginUser.progNum}">
											<div class="kt-section">
												<div class="kt-section__content">
													<table class="table table-bordered">
														<thead>
															<tr>
																<th>#</th>
																<th style="font-weight: bold;">학교명</th>
																<th style="font-weight: bold;">전공</th>
																<th style="font-weight: bold;">분류</th>
																<th style="font-weight: bold;">상태</th>
																<th style="font-weight: bold;">입학일</th>
																<th style="font-weight: bold;">졸업일</th>
															</tr>
														</thead>
														
														<c:choose>
															<c:when test="${not empty eduList}">
														<tbody style="text-align: center;">
														<c:forEach items="${eduList}" var="profVo" varStatus="listStat">
															<tr>
																<th scope="row">${listStat.count}
																<input type="hidden" name="eduNum" id="eduNum" value="${profVo.eduNum}"></th>
																<td>${profVo.schoolName}</td>
																<td>${profVo.major}</td>
																<td>${profVo.eduCategory}</td>
																<td>${profVo.eduState}</td>
																<td>${profVo.enterDate}</td>
																<td>${profVo.graduateDate}</td>
															</tr>
														</c:forEach>
														</c:when>
														<c:otherwise>
															<tr>
																<td colspan="7" class="txt_center" align="center"><b>학력 데이터가 없습니다.</b></td>
															</tr>
														</c:otherwise>
														</c:choose>
														</tbody>
													</table>
												</div>
											<!--end::Section-->
										</div>
									</form>
							</div>
						</div>
					
					
					
					
					
					
							<div class="kt-portlet kt-portlet--mobile">
									<div class="kt-portlet__head kt-portlet__head--lg">
										<div class="kt-portlet__head-label">
											<span class="kt-portlet__head-icon">
													</span>
												<h3 class="kt-portlet__head-title">
												<b>경력</b>
												</h3>
												<div class="col kt-align-right">
												<pre>																						
												<button type="button" class="btn btn-brand" onclick="openPopUp3()">업데이트</button></pre>
												</div>
										</div>
									</div>

											<!--begin::Section-->
											<!--바디  -->
											<div class="kt-portlet__body">
										<form>
										<input type="hidden" name="progNum" value="${LoginUser.progNum}">
											<div class="kt-section">
												<div class="kt-section__content">
													<table class="table table-bordered">
														<thead>
															<tr>
																<th>#</th>
																<th style="font-weight: bold;">회사명</th>
																<th style="font-weight: bold;">근무부서</th>
																<th style="font-weight: bold;">직책</th>
																<th style="font-weight: bold;">입사일</th>
																<th style="font-weight: bold;">퇴사일</th>
															</tr>
														</thead>
														
														
														<c:choose>
															<c:when test="${not empty cList}">
														<tbody style="text-align: center;">
														<c:forEach items="${cList}" var="profVo" varStatus="listStat">
															<tr>
																<th scope="row">${listStat.count}
																<input type="hidden" name="careerNum" id="careerNum" value="${profVo.careerNum}"></th>
																<td>${profVo.companyName}</td>
																<td>${profVo.department}</td>
																<td>${profVo.position}</td>
																<td>${profVo.joinDate}</td>
																<td>${profVo.retireDate}</td>
															</tr>
														</c:forEach>
														</c:when>
														<c:otherwise>
															<tr>
																<td colspan="6" class="txt_center" align="center"><b>경력 데이터가 없습니다.</b></td>
															</tr>
														</c:otherwise>
														</c:choose>
														</tbody>
													</table>
												</div>
											<!--end::Section-->
										</div>
									</form>
							</div>
						</div>





							<div class="kt-portlet kt-portlet--mobile">
								<div class="kt-portlet__head kt-portlet__head--lg">
									<div class="kt-portlet__head-label">
										<span class="kt-portlet__head-icon">
										</span>
										<h3 class="kt-portlet__head-title">
										<b>언어 숙련도</b>
										</h3>
										<div class="col kt-align-right">
										<pre>																					
										<button type="button" class="btn btn-brand" onclick="openPopUp4()">업데이트</button></pre>
										</div>
									</div>
								</div>

											<!--begin::Section-->
											<!--바디  -->
											<div class="kt-portlet__body">
										<form>
										<input type="hidden" name="progNum" value="${LoginUser.progNum}">
											<div class="kt-section">
												<div class="kt-section__content">
													<table class="table table-bordered">
														<thead>
															<tr>
																<th>#</th>
																<th style="font-weight: bold;">종류</th>
																<th style="font-weight: bold;">숙련도</th>
																<th style="font-weight: bold;">경험(연차)</th>
															</tr>
														</thead>
														
														
														
														<c:choose>
															<c:when test="${not empty plsList}">
														<tbody style="text-align: center;">
														<c:forEach items="${plsList}" var="profVo" varStatus="listStat">
															<tr>
																<th scope="row">${listStat.count}
																<input type="hidden" name="plNum" id="plNum" value="${profVo.plNum}"></th>
																<td>${profVo.plName}</td>
																<td>${profVo.profiency}</td>
																<td>${profVo.experience}</td>
															</tr>
														</c:forEach>
														</c:when>
														<c:otherwise>
															<tr>
																<td colspan="4" class="txt_center" align="center"><b>프로그래밍 언어 숙련도 데이터가 없습니다.</b></td>
															</tr>
														</c:otherwise>
														</c:choose>
														</tbody>
													</table>
												</div>
											<!--end::Section-->
										</div>
									</form>
									<!--end: Datatable -->
							</div>
							<!--바디  -->
						</div>
						
				</div>

		<div id="kt_scrolltop" class="kt-scrolltop">
			<i class="fa fa-arrow-up"></i>
		</div>

		<!-- end::Scrolltop -->



		<script>
			var KTAppOptions = {
				"colors": {
					"state": {
						"brand": "#5d78ff",
						"dark": "#282a3c",
						"light": "#ffffff",
						"primary": "#5867dd",
						"success": "#34bfa3",
						"info": "#36a3f7",
						"warning": "#ffb822",
						"danger": "#fd3995"
					},
					"base": {
						"label": ["#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466"],
						"shape": ["#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a"]
					}
				}
			};
		</script>

		<!-- end::Global Config -->

		<!--begin:: Global Mandatory Vendors -->
		<script src="../assets/vendors/general/jquery/dist/jquery.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/popper.js/dist/umd/popper.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/js-cookie/src/js.cookie.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/moment/min/moment.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/tooltip.js/dist/umd/tooltip.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/sticky-js/dist/sticky.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/wnumb/wNumb.js" type="text/javascript"></script>

		<!--end:: Global Mandatory Vendors -->

		<!--begin:: Global Optional Vendors -->
		<script src="../assets/vendors/general/jquery-form/dist/jquery.form.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/block-ui/jquery.blockUI.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/components/vendors/bootstrap-datepicker/init.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/components/vendors/bootstrap-timepicker/init.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/components/vendors/bootstrap-switch/init.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/select2/dist/js/select2.full.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/ion-rangeslider/js/ion.rangeSlider.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/typeahead.js/dist/typeahead.bundle.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/handlebars/dist/handlebars.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/inputmask/dist/jquery.inputmask.bundle.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/inputmask/dist/inputmask/inputmask.date.extensions.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/nouislider/distribute/nouislider.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/owl.carousel/dist/owl.carousel.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/autosize/dist/autosize.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/clipboard/dist/clipboard.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/dropzone/dist/dropzone.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/summernote/dist/summernote.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/markdown/lib/markdown.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/components/vendors/bootstrap-markdown/init.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/bootstrap-notify/bootstrap-notify.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/components/vendors/bootstrap-notify/init.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/jquery-validation/dist/jquery.validate.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/jquery-validation/dist/additional-methods.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/components/vendors/jquery-validation/init.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/toastr/build/toastr.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/raphael/raphael.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/morris.js/morris.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/chart.js/dist/Chart.bundle.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/waypoints/lib/jquery.waypoints.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/counterup/jquery.counterup.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/es6-promise-polyfill/promise.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/sweetalert2/dist/sweetalert2.min.js" type="text/javascript"></script>
		<script src="../assets/vendors/custom/components/vendors/sweetalert2/init.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/jquery.repeater/src/lib.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/jquery.repeater/src/jquery.input.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/jquery.repeater/src/repeater.js" type="text/javascript"></script>
		<script src="../assets/vendors/general/dompurify/dist/purify.js" type="text/javascript"></script>

		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Bundle(used by all pages) -->
		<script src="../assets/demo/default/base/scripts.bundle.js" type="text/javascript"></script>

		<!--end::Global Theme Bundle -->

		<!--begin::Page Scripts(used by this page) -->
		<script src="../assets/app/custom/general/crud/metronic-datatable/base/data-local.js" type="text/javascript"></script>

		<!--end::Page Scripts -->

		<!--begin::Global App Bundle(used by all pages) -->
		<script src="../assets/app/bundle/app.bundle.js" type="text/javascript"></script>

		<!--end::Global App Bundle -->
	</body>

	<!-- end::Body -->
	
	<script>


function openPopUp2()
{
    // window.name = "부모창 이름"; 
      window.name = "parentForm";
    // window.open("open할 window", "자식창 이름", "팝업창 옵션");
      var width = "800"; 
	  var height = "500"; 
	  var top = (window.screen.height-height)/2; 
	  var left = (window.screen.width-width)/2; 
 	  var url = "profile/eduRegisterForm.jsp"; 
	  var title = "학력 정보 등록"; 
	  var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width="+width+",height="+height+",top="+top+",left="+left;

      window.open(url, title, status);


  
}

function openPopUp3()
{
    // window.name = "부모창 이름"; 
      window.name = "parentForm";
    // window.open("open할 window", "자식창 이름", "팝업창 옵션");
      var width = "800"; 
	  var height = "500"; 
	  var top = (window.screen.height-height)/2; 
	  var left = (window.screen.width-width)/2; 
 	  var url = "profile/careerRegisterForm.jsp"; 
	  var title = "경력 정보 등록"; 
	  var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width="+width+",height="+height+",top="+top+",left="+left;

      window.open(url, title, status);


  
}

function openPopUp4()
{
    // window.name = "부모창 이름"; 
      window.name = "parentForm";
    // window.open("open할 window", "자식창 이름", "팝업창 옵션");
      var width = "800"; 
	  var height = "500"; 
	  var top = (window.screen.height-height)/2; 
	  var left = (window.screen.width-width)/2; 
 	  var url = "profile/plsRegisterForm.jsp"; 
	  var title = "언어숙련도 정보 등록"; 
	  var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width="+width+",height="+height+",top="+top+",left="+left;

      window.open(url, title, status);


  
}
</script>
</html>
