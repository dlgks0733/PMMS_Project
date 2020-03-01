<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>


<html lang="en">

<!-- begin::Head -->
<head>
<meta charset="utf-8" />
<title> PMMS | Message</title>
<meta name="description" content="Tabbed portlet examples">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--begin::Fonts -->
<script
	src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
<script>
	WebFont.load({
		google : {
			"families" : [ "Poppins:300,400,500,600,700",
					"Roboto:300,400,500,600,700" ]
		},
		active : function() {
			sessionStorage.fonts = true;
		}
	});
</script>

<!--end::Fonts -->

<!--begin:: Global Mandatory Vendors -->
<link
	href="../assets/vendors/general/perfect-scrollbar/css/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />

<!--end:: Global Mandatory Vendors -->

<!--begin:: Global Optional Vendors -->
<link href="../assets/vendors/general/tether/dist/css/tether.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-datetime-picker/css/bootstrap-datetimepicker.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-timepicker/css/bootstrap-timepicker.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-select/dist/css/bootstrap-select.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/select2/dist/css/select2.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/ion-rangeslider/css/ion.rangeSlider.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/nouislider/distribute/nouislider.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/owl.carousel/dist/assets/owl.carousel.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/owl.carousel/dist/assets/owl.theme.default.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/dropzone/dist/dropzone.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/summernote/dist/summernote.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/general/bootstrap-markdown/css/bootstrap-markdown.min.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/animate.css/animate.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/toastr/build/toastr.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/morris.js/morris.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/sweetalert2/dist/sweetalert2.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/general/socicon/css/socicon.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/custom/vendors/line-awesome/css/line-awesome.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/custom/vendors/flaticon/flaticon.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/vendors/custom/vendors/flaticon2/flaticon.css"
	rel="stylesheet" type="text/css" />
<link
	href="../assets/vendors/custom/vendors/fontawesome5/css/all.min.css"
	rel="stylesheet" type="text/css" />

<!--end:: Global Optional Vendors -->

<!--begin::Global Theme Styles(used by all pages) -->
<link href="../assets/demo/default/base/style.bundle.css"
	rel="stylesheet" type="text/css" />

<!--end::Global Theme Styles -->

<!--begin::Layout Skins(used by all pages) -->
<link href="../assets/demo/default/skins/header/base/light.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/demo/default/skins/header/menu/light.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/demo/default/skins/brand/dark.css"
	rel="stylesheet" type="text/css" />
<link href="../assets/demo/default/skins/aside/dark.css"
	rel="stylesheet" type="text/css" />

<!--end::Layout Skins -->
<link rel="shortcut icon" href="../assets/media/logos/favicon.ico" />
</head>

<!-- end::Head -->

<!-- begin::Body -->
<body
	class="kt-header--fixed kt-header-mobile--fixed kt-subheader--fixed kt-subheader--enabled kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">

	<!-- begin:: Page -->

	<div class="kt-grid kt-grid--hor kt-grid--root">
		<div
			class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">



			<!-- begin:: Content -->
			<div class="kt-content  kt-grid__item kt-grid__item--fluid"
				id="kt_content">
				<div class="row">
					<div class="col-xl-12">

						<!--begin::Portlet-->
						<div class="kt-portlet kt-portlet--tabs">
							<div class="kt-portlet__head">
								<div class="kt-portlet__head-label">
									<h3 class="kt-portlet__head-title">${LoginUser.name}의 메세지
										조회</h3>
								</div>
								
								<div class="kt-portlet__head-toolbar">
									<ul
										class="nav nav-tabs nav-tabs-bold nav-tabs-line   nav-tabs-line-right nav-tabs-line-brand"
										role="tablist">
										<li class="nav-item"><a class="nav-link active"
											data-toggle="tab" href="#kt_portlet_tab_1_1" role="tab">
												받은 메세지 </a></li>
										<li class="nav-item"><a class="nav-link"
											data-toggle="tab" href="#kt_portlet_tab_1_2" role="tab">
												보낸 메세지 </a></li>
										
									</ul>
								</div>
							</div>
							<div class="kt-portlet__body">
								<div class="tab-content">
									<input type="hidden" name="progNum"
										value="${LoginUser.progNum}">
										<div class="tab-pane active" id="kt_portlet_tab_1_1">
									<form method="post" action="/prog?command=receiveMsgDelete">
											<table class="table table-bordered table-hover">
												<thead style="text-align: center;">
													<tr>
														<th><input type="checkbox" name="receiveChk" id="ReceiveAll"/></th>
														<th style="font-weight: bold;">제목</th>
														<th style="font-weight: bold;">보낸 사람</th>
														<th style="font-weight: bold;">날짜</th>
													</tr>
												</thead>
												<c:choose>
												<c:when test="${not empty ReceiveMessageList}">
												<tbody style="text-align: center;">
													<c:forEach items="${ReceiveMessageList}" var="rVo"
														varStatus="listStat">
														<tr>
															<td style="text-align: center;">
															<input type="hidden" name="receiveNum" value="${rVo.receiveNum}" id="receiveNum">
															<input type="checkbox" value="${rVo.receiveNum}" name="msgCheck" id="receiveNum" class="receiveChk"/></td>
															<td><a onclick="window.open('prog?command=messageReceiveViewForm&receiveNum=${rVo.receiveNum}','상세보기','width=800,height=500,location=no,status=no,scrollbars=no')">${rVo.receiveSubject}</a></td>
															<td>${rVo.receiveName}<input type="hidden" value="${rVo.receiveSender}"></td>
															<td>${rVo.receiveWriteDate}</td>
														</tr>
													</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
														<td colspan="5" class="txt_center" align="center"><b>받은 메세지가 없습니다.</b></td>
														</tr>
													</c:otherwise>
													</c:choose>
												</tbody>
											</table>
											<div class="col kt-align-right">
												<button type="button" class="btn btn-brand"
													onclick="openPopUp()">메세지 보내기</button>
												<button type="submit" class="btn btn-danger">삭제</button>
												</div>
									</form>
										</div>
										
										<div class="tab-pane" id="kt_portlet_tab_1_2">
									<form method="post" action="/prog?command=sendMsgDelete">
											<table class="table table-bordered table-hover">
												<thead style="text-align: center;">
													<tr>
														<th><input type="checkbox" name="sendChk" id="SendAll"/></th>
														<th style="font-weight: bold;">제목</th>
														<th style="font-weight: bold;">받는 사람</th>
														<th style="font-weight: bold;">날짜</th>
													</tr>
												</thead>
					
												<c:choose>
													<c:when test="${not empty SendMessageList}">
												<tbody style="text-align: center;">
													<c:forEach items="${SendMessageList}" var="sVo"
														varStatus="listStat">
														<tr>
															<td style="text-align: center;">
															<input type="hidden" name="sendNum" value="${sVo.sendNum}" id="sendNum">
															<input type="checkbox" value="${sVo.sendNum}" name="msgCheck" id="sendChk" class="sendChk"></td>
															<td><a onclick="window.open('prog?command=messageSendViewForm&sendNum=${sVo.sendNum}','상세보기','width=800,height=500,location=no,status=no,scrollbars=no')">${sVo.sendSubject}</a></td>
															<td>${sVo.sendName}<input type="hidden" id="sendReceiver" value="${sVo.sendReceiver}"></td>
															<td>${sVo.sendWriteDate}</td>
														</tr>
													</c:forEach>
													</c:when>
													<c:otherwise>
														<tr>
														<td colspan="5" class="txt_center" align="center"><b>보낸 메세지가 없습니다.</b></td>
														</tr>
													</c:otherwise>
													</c:choose>
												</tbody>
											</table>
											<div class="col kt-align-right">
											<button type="button" class="btn btn-brand"
												onclick="openPopUp()">메세지 보내기</button>
											<button type="submit" class="btn btn-danger">삭제</button>
											</div>
									</form>
										</div>
									<div>
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

		<%@ include file="../include/footer.jsp"%>

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

	<!--begin::Global App Bundle(used by all pages) -->
	<script src="../assets/app/bundle/app.bundle.js" type="text/javascript"></script>

	<!--end::Global App Bundle -->
</body>

<!-- end::Body -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
</script>

<script type="text/javascript">  
//체크박스 전체 선택을 위한 function
$( document ).ready( function() {
    $( '#ReceiveAll' ).click( function() {
      $( '.receiveChk' ).prop( 'checked', this.checked );
    } );
  } );
</script>

<script type="text/javascript">             
$( document ).ready( function() {
    $( '#SendAll' ).click( function() {
      $( '.sendChk' ).prop( 'checked', this.checked );
    } );
  } );
</script>
	
	<script>
	function deleteReceive(receiveNum) {
		var messageNum = receiveNum;

		if (confirm("삭제하시겠습니까?") == true) {
			location.href = "/prog?command=receiveMsgDelete&messageNum="
					+ messageNum;
			alert("삭제되었습니다.");
		} else {
			return false;
		}

	}

	function deleteSend(sendNum) {
		var messageNum = sendNum;
		
		if (confirm("삭제하시겠습니까?") == true) {
			location.href = "/prog?command=sendMsgDelete&messageNum=" + messageNum;
			alert("삭제되었습니다.")
		}else{
			return false;
		}
	}
	//메세지 보내기 팝업 창
	function openPopUp() {
		// window.name = "부모창 이름"; 
		window.name = "parentForm";
		// window.open("open할 window", "자식창 이름", "팝업창 옵션");
		var width = "800";
		var height = "555";
		var top = (window.screen.height - height) / 2;
		var left = (window.screen.width - width) / 2;
		var url = "profile/messageRegisterForm.jsp";
		var title = "메세지 보내기";
		var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width="
				+ width + ",height=" + height + ",top=" + top + ",left=" + left;

		window.open(url, title, status);

	}
</script>

<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>

</html>