<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">

<!-- begin::Head -->
<head>
<title>PMMS | 사용자 권한 부여</title>
</head>
<!-- end::Head -->

<!-- begin::Body -->
<body
	class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">
	<div class="kt-content  kt-grid__item kt-grid__item--fluid"
		id="kt_content">
		<div class="row">
			<div class="col-lg-12">

				<!--begin::Portlet-->
				<div
					class="kt-portlet kt-portlet--last kt-portlet--head-lg kt-portlet--responsive-mobile"
					id="kt_page_portlet">
					<div class="kt-portlet__head kt-portlet__head--lg">
						<div class="kt-portlet__head-label">
							<h3 class="kt-portlet__head-title">사용자 권한 부여</h3>
						</div>
					</div>
					<div class="kt-portlet__body">
						<form method="post">
							<!--begin::Section-->
							<div class="kt-section">
								<div class="kt-section__content" style="text-align: center; vertical-align: middle;">
									<table class="table table-bordered table-hover">
										<thead style="text-align: center; vertical-align: middle;">
											<tr>
												<th style="font-weight: bold;">번호</th>
												<th style="font-weight: bold;">이름</th>
												<th style="font-weight: bold;">권한</th>
												<th style="font-weight: bold;">관리</th>
											</tr>
										</thead>
										<tbody style="text-align: center; vertical-align: middle;">
											<c:forEach items="${gList}" var="pVo" varStatus="listStat">
												<tr>
													<th scope="row">${listStat.count}
													<input type="hidden" id="index" value="${listStat.index}">
													<input type="hidden" name="progNum" id="progNum" value="${pVo.progNum}">
													<input type="hidden" name="name" id="name" value="${pVo.name}">
													<input type="hidden" name="grant" id="grant" value="${pVo.grant}">
													</th>
													<td>${pVo.name}</td>
													<td><c:if test="${pVo.grant == '0' }">일반사용자</c:if>
														<c:if test="${pVo.grant == '1' }">PM</c:if></td>
													<td>
													<span class="kt-badge kt-badge--primary kt-badge--inline" onclick="openPopUp('${pVo.progNum}')">수정</span>
													<!-- <span class="kt-badge kt-badge--success kt-badge--inline">수정</span> -->
														<%-- <button type="button" class="btn btn-secondary"
															onclick="openPopUp('${pVo.progNum}')">수정</button>  --%>
													<%-- <a href="prog?command=grantModify&progNum=${pVo.progNum}&grant=${pVo.grant}"><span
													class="kt-badge kt-badge--warning kt-badge--inline kt-badge--pill kt-badge--rounded">수정</span></a> --%>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>

							<!--end::Section-->
							<!-- <div class="kt-portlet__foot">
								<div class="kt-form__actions kt-form__actions--right">
									<div class="row">
										<div class="col kt-align-left">
											<button type="submit" class="btn btn-secondary">수정</button>

										</div>
									</div>
								</div>
							</div> -->
						</form>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- begin:: Footer -->

	<%@ include file="../include/footer.jsp"%>

	<!-- end:: Footer -->

	<!-- end:: Page -->

	<!-- begin::Scrolltop -->
	<div id="kt_scrolltop" class="kt-scrolltop">
		<i class="fa fa-arrow-up"></i>
	</div>

	<!-- end::Scrolltop -->

	<!-- begin::Sticky Toolbar -->
	<ul class="kt-sticky-toolbar" style="margin-top: 30px;">
		<li class="kt-sticky-toolbar__item kt-sticky-toolbar__item--success"
			id="kt_demo_panel_toggle" data-toggle="kt-tooltip"
			title="Check out more demos" data-placement="right"><a href="#"
			class=""><i class="flaticon2-drop"></i></a></li>
		<li class="kt-sticky-toolbar__item kt-sticky-toolbar__item--brand"
			data-toggle="kt-tooltip" title="Layout Builder" data-placement="left">
			<a
			href="https://keenthemes.com/metronic/preview/default/builder.html"
			target="_blank"><i class="flaticon2-gear"></i></a>
		</li>
		<li class="kt-sticky-toolbar__item kt-sticky-toolbar__item--warning"
			data-toggle="kt-tooltip" title="Documentation" data-placement="left">
			<a href="https://keenthemes.com/metronic/?page=docs" target="_blank"><i
				class="flaticon2-telegram-logo"></i></a>
		</li>
	</ul>

	<!-- end::Sticky Toolbar -->


	<!-- begin::Global Config(global config for global JS sciprts) -->
	<script>
		var KTAppOptions = {
			"colors" : {
				"state" : {
					"brand" : "#5d78ff",
					"dark" : "#282a3c",
					"light" : "#ffffff",
					"primary" : "#5867dd",
					"success" : "#34bfa3",
					"info" : "#36a3f7",
					"warning" : "#ffb822",
					"danger" : "#fd3995"
				},
				"base" : {
					"label" : [ "#c5cbe3", "#a1a8c3", "#3d4465", "#3e4466" ],
					"shape" : [ "#f0f3ff", "#d9dffa", "#afb4d4", "#646c9a" ]
				}
			}
		};
	</script>

	<!-- end::Global Config -->

	<!--begin:: Global Mandatory Vendors -->
	<script src="../assets/vendors/general/jquery/dist/jquery.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/popper.js/dist/umd/popper.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/js-cookie/src/js.cookie.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/moment/min/moment.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/tooltip.js/dist/umd/tooltip.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/perfect-scrollbar/dist/perfect-scrollbar.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/sticky-js/dist/sticky.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/wnumb/wNumb.js"
		type="text/javascript"></script>

	<!--end:: Global Mandatory Vendors -->

	<!--begin:: Global Optional Vendors -->
	<script
		src="../assets/vendors/general/jquery-form/dist/jquery.form.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/block-ui/jquery.blockUI.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/components/vendors/bootstrap-datepicker/init.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-datetime-picker/js/bootstrap-datetimepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-timepicker/js/bootstrap-timepicker.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/components/vendors/bootstrap-timepicker/init.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-daterangepicker/daterangepicker.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-maxlength/src/bootstrap-maxlength.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/vendors/bootstrap-multiselectsplitter/bootstrap-multiselectsplitter.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-select/dist/js/bootstrap-select.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-switch/dist/js/bootstrap-switch.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/components/vendors/bootstrap-switch/init.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/select2/dist/js/select2.full.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/ion-rangeslider/js/ion.rangeSlider.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/typeahead.js/dist/typeahead.bundle.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/handlebars/dist/handlebars.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/inputmask/dist/jquery.inputmask.bundle.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/inputmask/dist/inputmask/inputmask.date.extensions.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/inputmask/dist/inputmask/inputmask.numeric.extensions.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/nouislider/distribute/nouislider.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/owl.carousel/dist/owl.carousel.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/autosize/dist/autosize.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/clipboard/dist/clipboard.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/dropzone/dist/dropzone.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/summernote/dist/summernote.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/markdown/lib/markdown.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-markdown/js/bootstrap-markdown.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/components/vendors/bootstrap-markdown/init.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/bootstrap-notify/bootstrap-notify.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/components/vendors/bootstrap-notify/init.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/jquery-validation/dist/jquery.validate.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/jquery-validation/dist/additional-methods.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/components/vendors/jquery-validation/init.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/toastr/build/toastr.min.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/raphael/raphael.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/morris.js/morris.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/chart.js/dist/Chart.bundle.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/vendors/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/vendors/jquery-idletimer/idle-timer.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/waypoints/lib/jquery.waypoints.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/counterup/jquery.counterup.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/es6-promise-polyfill/promise.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/sweetalert2/dist/sweetalert2.min.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/custom/components/vendors/sweetalert2/init.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/jquery.repeater/src/lib.js"
		type="text/javascript"></script>
	<script
		src="../assets/vendors/general/jquery.repeater/src/jquery.input.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/jquery.repeater/src/repeater.js"
		type="text/javascript"></script>
	<script src="../assets/vendors/general/dompurify/dist/purify.js"
		type="text/javascript"></script>

	<!--end:: Global Optional Vendors -->

	<!--begin::Global Theme Bundle(used by all pages) -->
	<script src="../assets/demo/default/base/scripts.bundle.js"
		type="text/javascript"></script>

	<!--end::Global Theme Bundle -->

	<!--begin::Page Scripts(used by this page) -->
	<script
		src="../assets/app/custom/general/crud/forms/widgets/bootstrap-datepicker.js"
		type="text/javascript"></script>

	<!--end::Page Scripts -->

	<!--begin::Global App Bundle(used by all pages) -->
	<script src="../assets/app/bundle/app.bundle.js" type="text/javascript"></script>

	<!--end::Global App Bundle -->
</body>

<!-- end::Body -->
<script>
	function openPopUp(progNum) {
		var progNum = progNum;
		
		var width = "800"; 
		var height = "500"; 
		var top = (window.screen.height-height)/2; 
		var left = (window.screen.width-width)/2; 
	 	var url = "/prog?command=grantUpdateForm&progNum="+progNum; 
		var title = "권한 수정"; 
		var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width="+width+",height="+height+",top="+top+",left="+left;

	   	var winObject = window.open(url, title, status);
	    

	}
</script>
</html>