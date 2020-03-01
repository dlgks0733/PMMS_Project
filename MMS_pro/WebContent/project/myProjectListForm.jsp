<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

		<!-- 내 프로젝트 내역 리스트 폼 -->

<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 4 & Angular 7
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<html lang="en">

	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>Metronic | Tabbed Portlets</title>
		<meta name="description" content="Tabbed portlet examples">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!--begin::Fonts -->
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
		<script>
			WebFont.load({
				google: {
					"families": ["Poppins:300,400,500,600,700", "Roboto:300,400,500,600,700"]
				},
				active: function() {
					sessionStorage.fonts = true;
				}
			});
		</script>

		<!--end::Fonts -->

		<!--begin:: Global Mandatory Vendors -->
		<link href="../assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" type="text/css" />

		<!--end:: Global Mandatory Vendors -->

		<!--begin:: Global Optional Vendors -->
		<link href="../assets/vendors/general/tether/dist/css/tether.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-timepicker/css/bootstrap-timepicker.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/select2/dist/css/select2.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/ion-rangeslider/css/ion.rangeSlider.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/nouislider/distribute/nouislider.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/owl.carousel/dist/assets/owl.carousel.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/owl.carousel/dist/assets/owl.theme.default.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/dropzone/dist/dropzone.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/summernote/dist/summernote.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/animate.css/animate.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/toastr/build/toastr.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/morris.js/morris.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/sweetalert2/dist/sweetalert2.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/general/socicon/css/socicon.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/custom/vendors/line-awesome/css/line-awesome.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/custom/vendors/flaticon/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/custom/vendors/flaticon2/flaticon.css" rel="stylesheet" type="text/css" />
		<link href="../assets/vendors/custom/vendors/fontawesome5/css/all.min.css" rel="stylesheet" type="text/css" />

		<!--end:: Global Optional Vendors -->

		<!--begin::Global Theme Styles(used by all pages) -->
		<link href="../assets/demo/default/base/style.bundle.css" rel="stylesheet" type="text/css" />

		<!--end::Global Theme Styles -->

		<!--begin::Layout Skins(used by all pages) -->
		<link href="../assets/demo/default/skins/header/base/light.css" rel="stylesheet" type="text/css" />
		<link href="../assets/demo/default/skins/header/menu/light.css" rel="stylesheet" type="text/css" />
		<link href="../assets/demo/default/skins/brand/dark.css" rel="stylesheet" type="text/css" />
		<link href="../assets/demo/default/skins/aside/dark.css" rel="stylesheet" type="text/css" />

		<!--end::Layout Skins -->
		<link rel="shortcut icon" href="../assets/media/logos/favicon.ico" />
	</head>

	<!-- end::Head -->

	<!-- begin::Body -->
	<body class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

		<!-- begin:: Page -->

		<div class="kt-grid kt-grid--hor kt-grid--root">
			<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">



						<!-- begin:: Content -->
						<div class="kt-content  kt-grid__item kt-grid__item--fluid" id="kt_content">
							<div class="row">
								<div class="col-xl-12">

									<!--begin::Portlet-->
									<div class="kt-portlet kt-portlet--tabs">
										<div class="kt-portlet__head">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title">
													내 프로젝트 내역
												</h3>
											</div>
											<div class="kt-portlet__head-toolbar">
												<ul class="nav nav-tabs nav-tabs-bold nav-tabs-line   nav-tabs-line-right nav-tabs-line-brand" role="tablist">
													<li class="nav-item">
														<a class="nav-link active" data-toggle="tab" href="#kt_portlet_tab_1_1" role="tab">
															전체 리스트
														</a>
													</li>
													<li class="nav-item">
														<a class="nav-link" data-toggle="tab" href="#kt_portlet_tab_1_2" role="tab">
															진행 프로젝트
														</a>
													</li>
													<li class="nav-item">
														<a class="nav-link" data-toggle="tab" href="#kt_portlet_tab_1_3" role="tab">
															종료 프로젝트
														</a>
													</li>
												</ul>
											</div>
										</div>
										<div class="kt-portlet__body">
											<div class="tab-content">
												<div class="tab-pane active" id="kt_portlet_tab_1_1">
													<table class="table table-bordered table-hover">
			                                          <thead style="text-align: center;">
			                                             <tr>
			                                                <th>#</th>
			                                                <th style="font-weight: bold;">프로젝트 명</th>
			                                                <th style="font-weight: bold;">담당자</th>
			                                                <th style="font-weight: bold;">지원직무</th>
			                                                <th style="font-weight: bold;">상태</th>
			                                             </tr>
			                                          </thead>
			                                          <tbody style="text-align: center;">
			                                          <c:forEach items="${aList}" var="pVo" varStatus="listStat">
			                                             <tr>
			                                                <th scope="row">${listStat.count}</th>
			                                                <td><a href="/proj?command=myProjectViewForm&projNum=${pVo.projNum}">${pVo.projName}</a></td>
			                                                <td>
			                                                <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${pVo.progName}</a>
			                                                   <div class="dropdown-menu">
			                                                   <a class="dropdown-item" href="#" onclick="msgPopUp('${pVo.progNum}', '${pVo.progName}')">
			                                                   <i class="kt-nav__link-icon flaticon2-send"></i>
			                                                   <span class="kt-nav__link-text">메세지</span>
			                                                   </a>
			                                                   </div>
			                                                </td>
			                                                <td>${pVo.applyPosition}</td>
			                                                <c:if test="${pVo.projStat eq '모집' }">
																<td><span class="kt-badge kt-badge--success kt-badge--inline">모집</span></td>
																</c:if>
																<c:if test="${pVo.projStat eq '진행' }">
																<td><span class="kt-badge kt-badge--warning kt-badge--inline">진행</span></td>
																</c:if>
																<c:if test="${pVo.projStat eq '종료' }">
																<td><span class="kt-badge kt-badge--danger kt-badge--inline">종료</span></td>
																</c:if>
			                                             </tr>
			                                          </c:forEach>
			                                          <c:if test="${empty aList }">
			                                          <td colspan="5">내역이 없습니다</td>
			                                          </c:if>
			                                          </tbody>
			                                          </tbody>
                                       				</table>
												</div>
												<div class="tab-pane" id="kt_portlet_tab_1_2">
													<table class="table table-bordered table-hover">
			                                          <thead style="text-align: center;">
			                                             <tr>
			                                                <th>#</th>
			                                                <th style="font-weight: bold;">프로젝트 명</th>
			                                                <th style="font-weight: bold;">담당자</th>
			                                                <th style="font-weight: bold;">지원직무</th>
			                                                <th style="font-weight: bold;">상태</th>
			                                             </tr>
			                                          </thead>
			                                          <tbody style="text-align: center;">
			                                          <c:forEach items="${pPList}" var="pVo" varStatus="listStat">
			                                             <tr>
			                                                <th scope="row">${listStat.count}</th>
			                                                <td><a href="/proj?command=myProjectViewForm&projNum=${pVo.projNum}">${pVo.projName}</a></td>
			                                                <td>
			                                                <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${pVo.progName}</a>
			                                                   <div class="dropdown-menu">
			                                                   <a class="dropdown-item" href="#" onclick="msgPopUp('${pVo.progNum}', '${pVo.progName}')">
			                                                   <i class="kt-nav__link-icon flaticon2-send"></i>
			                                                   <span class="kt-nav__link-text">메세지</span>
			                                                   </a>
			                                                   </div>
			                                                </td>
			                                                <td>${pVo.applyPosition}</td>
			                                                 <c:if test="${pVo.projStat eq '모집' }">
																<td><span class="kt-badge kt-badge--success kt-badge--inline">모집</span></td>
																</c:if>
																<c:if test="${pVo.projStat eq '진행' }">
																<td><span class="kt-badge kt-badge--warning kt-badge--inline">진행</span></td>
																</c:if>
																<c:if test="${pVo.projStat eq '종료' }">
																<td><span class="kt-badge kt-badge--danger kt-badge--inline">종료</span></td>
																</c:if>
			                                             </tr>
			                                          </c:forEach>
			                                          <c:if test="${empty pPList }">
			                                          <td colspan="5">내역이 없습니다</td>
			                                          </c:if>
			                                          </tbody>
			                                          </tbody>
                                       				</table>
												</div>
												<div class="tab-pane" id="kt_portlet_tab_1_3">
													<table class="table table-bordered table-hover">
			                                          <thead style="text-align: center;">
			                                             <tr>
			                                                <th>#</th>
			                                                <th style="font-weight: bold;">프로젝트 명</th>
			                                                <th style="font-weight: bold;">담당자</th>
			                                                <th style="font-weight: bold;">지원직무</th>
			                                                <th style="font-weight: bold;">상태</th>
			                                             </tr>
			                                          </thead>
			                                          <tbody style="text-align: center;">
			                                          <c:forEach items="${ePList}" var="eVo" varStatus="listStat">
			                                             <tr>
			                                                <th scope="row">${listStat.count}</th>
			                                                <td><a href="/proj?command=myProjectViewForm&projNum=${pVo.projNum}">${eVo.projName}</a></td>
			                                                <td>
			                                                <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${eVo.progName}</a>
			                                                   <div class="dropdown-menu">
			                                                   <a class="dropdown-item" href="#" onclick="msgPopUp('${eVo.progNum}', '${eVo.progName}')">
			                                                   <i class="kt-nav__link-icon flaticon2-send"></i>
			                                                   <span class="kt-nav__link-text">메세지</span>
			                                                   </a>
			                                                   </div>
			                                                </td>
			                                                <td>${eVo.applyPosition}</td>
			                                                 <c:if test="${eVo.projStat eq '모집' }">
																<td><span class="kt-badge kt-badge--success kt-badge--inline">모집</span></td>
																</c:if>
																<c:if test="${eVo.projStat eq '진행' }">
																<td><span class="kt-badge kt-badge--warning kt-badge--inline">진행</span></td>
																</c:if>
																<c:if test="${eVo.projStat eq '종료' }">
																<td><span class="kt-badge kt-badge--danger kt-badge--inline">종료</span></td>
																</c:if>
			                                             </tr>
			                                          </c:forEach>
			                                          <c:if test="${empty ePList }">
			                                          <td colspan="5">내역이 없습니다</td>
			                                          </c:if>
			                                          </tbody>
                                       				</table>
												</div>
											</div>
										</div>
									</div>

									<!--end::Portlet-->
								</div>
							</div>
						</div>

						<!-- end:: Content -->
					</div>

					<!-- begin:: Footer -->
					
					<%@ include file="../include/footer.jsp" %>

					<!-- end:: Footer -->
				</div>

		<!-- end:: Page -->


		<!-- begin::Scrolltop -->
		<div id="kt_scrolltop" class="kt-scrolltop">
			<i class="fa fa-arrow-up"></i>
		</div>

		<!-- end::Scrolltop -->



		<!-- begin::Global Config(global config for global JS sciprts) -->
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

		<!--begin::Global App Bundle(used by all pages) -->
		<script src="../assets/app/bundle/app.bundle.js" type="text/javascript"></script>

		<!--end::Global App Bundle -->
	</body>

	<!-- end::Body -->
<script>

// 신청 취소 JavaScript
function deleteApplyStmt(applyStmtNum){
	var applyStmtNum = applyStmtNum;
	
	if(confirm("신청 취소하시겠습니까?") == true){
		location.href = "/proj?command=applyStmtDelete&applyStmtNum="+applyStmtNum;
		alert("취소되었습니다.");
	}
	else{
		return false;
	}
	
}


//메세지 팝업 JavaScript
function msgPopUp(progNum,progName){
	   var sendReceiver = progNum;
	   var sendName = progName;
	   
	    var width = "800"; 
	   var height = "555"; 
	   var top = (window.screen.height-height)/2; 
	   var left = (window.screen.width-width)/2; 
	   var url = "/prog?command=messageRegisterForm&sendReceiver="+sendReceiver+"&sendName="+sendName; 
	   var title = "메세지 보내기"; 
	   var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width="+width+",height="+height+",top="+top+",left="+left;

	    
	    window.open(url, title, status);
	    
	}
</script>
</html>