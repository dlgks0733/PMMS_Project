<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>

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
		<title>PMMS | Login</title>
		<meta name="description" content="Login page example">
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

		<!--begin::Page Custom Styles(used by this page) -->
		<link href="../assets/app/custom/login/login-v3.default.css" rel="stylesheet" type="text/css" />

		<!--end::Page Custom Styles -->

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
		<div class="kt-grid kt-grid--ver kt-grid--root">
			<div class="kt-grid kt-grid--hor kt-grid--root  kt-login kt-login--v3 kt-login--signin" id="kt_login">
				<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" style="background-image: url(../assets/media//bg/bg-3.jpg);">
					<div class="kt-grid__item kt-grid__item--fluid kt-login__wrapper">
						<div class="kt-login__container">
							<div class="kt-login__logo">
								<a href="#">
									<img src="../assets/media/logos/logo-5.png">
								</a>
							</div>
							<div class="kt-login__signin">
								<div class="kt-login__head">
									<h3 class="kt-login__title">로그인</h3>
								</div>
								
								<c:if test = "${message ne null}">
									<div class="alert alert-info alert-dismissible" role="alert">
									  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									  ${message}
									</div>
									</c:if>	
									<c:if test = "${param.session eq 'no'}">
									<div class="alert alert-warning alert-dismissible" role="alert">
									  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									  세션이 만료되었습니다. 다시 로그인해주세요.
									</div>
								</c:if>
								
								<form class="kt-form" method="post" action="main?command=login" onsubmit="return validateLogin()">
									<div class="input-group">
										<input class="form-control" type="text" placeholder="아이디" name="id" autocomplete="off" id="id">
									</div>
									<div class="input-group">
										<input class="form-control" type="password" placeholder="비밀번호" name="password" id="password">
									</div>
									<div class="row kt-login__extra">
										<div class="col">
											<label class="kt-checkbox">
												<input type="checkbox" name="remember"> 아이디 저장
												<span></span>
											</label>
										</div>
										<div class="col kt-align-right">
											<a href="javascript:;" id="kt_login_forgot" class="kt-login__link">비밀번호 찾기</a>
										</div>
									</div>
									<div class="kt-login__actions">
										<button type="submit" class="btn btn-brand btn-elevate kt-login__btn-primary">로그인</button>
									</div>
								</form>
							</div>
							<div class="kt-login__signup">
								<div class="kt-login__head">
									<h3 class="kt-login__title">회원가입</h3>
									<!-- <div class="kt-login__desc">Enter your details to create your account:</div> -->
								</div>
								<form class="kt-form" method="post" action="main?command=signUp" onsubmit="return validate()">
									<div class="input-group">
										<input class="form-control" type="text" placeholder="* 이름" name="name" autocomplete="off" id="name">
									</div>
									<div class="input-group">
										<input class="form-control" id="signUpid" type="text" placeholder="* 아이디" name="id" 
										autocomplete="off" readonly="readonly" onclick="openPopUp()">
									</div>
									<div class="input-group">
										<input class="form-control" type="password" placeholder="* 비밀번호" name="password" id="password1">
									</div>
									<div class="input-group">
										<input class="form-control" type="password" placeholder="* 비밀번호 확인" name="rpassword" id="rpassword1">
									</div>
									<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
									<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
									<div class="input-group">
													<select name="grade" class="form-control">
														<option value="1">초급 기능사</option>
														<option value="2">중급 기능사</option>
														<option value="3">고급 기능사</option>
														<option value="4">초급 기술자</option>
														<option value="5">중급 기술자</option>
														<option value="6">고급 기술자</option>
														<option value="7">특급 기술자</option>
														<option value="8">기술사</option>
													</select>
									</div>
									<div class="input-group">
										<input class="form-control" type="text" placeholder="이메일" name="email" autocomplete="off">
									</div>
									<div class="input-group">
										<input class="form-control" type="text" placeholder="전화번호" name="tel" autocomplete="off" onkeydown="return onlyNumber(event)" onkeyup="removeChar(event)">
									</div>
									<div class="input-group">
										<input class="form-control" type="text" placeholder="주소" id="juso" name="juso" autocomplete="off" onclick="postcode()">
									</div>
									<div class="input-group">
										<input class="form-control" type="text" placeholder="상세주소" id="extraJuso" name="extraJuso" autocomplete="off">
									</div>
									<div class="input-group">
										<input class="form-control" type="text" placeholder="은행" name="bank" autocomplete="off">
									</div>
									<div class="input-group">
										<input class="form-control" type="text" placeholder="계좌번호" name="account" autocomplete="off" onkeydown="return onlyNumber(event)" onkeyup="removeChar(event)">
									</div>
									<!-- <div class="row kt-login__extra">
										<div class="col kt-align-left">
											<label class="kt-checkbox">
												<input type="checkbox" name="agree">I Agree the <a href="#" class="kt-link kt-login__link kt-font-bold">terms and conditions</a>.
												<span></span>
											</label>
											<span class="form-text text-muted"></span>
										</div>
									</div> -->
									<div class="kt-login__actions">
										<button type="submit" class="btn btn-brand btn-elevate kt-login__btn-primary">가입</button>&nbsp;&nbsp;
										<button id="kt_login_signup_cancel" class="btn btn-light btn-elevate kt-login__btn-secondary">취소</button>
									</div>
								</form>

							</div>
							<div class="kt-login__forgot">
								<div class="kt-login__head">
									<h3 class="kt-login__title">Forgotten Password ?</h3>
									<div class="kt-login__desc">Enter your email to reset your password:</div>
								</div>
								<form class="kt-form" action="">
									<div class="input-group">
										<input class="form-control" type="text" placeholder="Email" name="email" id="kt_email" autocomplete="off">
									</div>
									<div class="kt-login__actions">
										<button id="kt_login_forgot_submit" class="btn btn-brand btn-elevate kt-login__btn-primary">Request</button>&nbsp;&nbsp;
										<button id="kt_login_forgot_cancel" class="btn btn-light btn-elevate kt-login__btn-secondary">Cancel</button>
									</div>
								</form>
							</div>
							<div class="kt-login__account">
<!-- 								<span class="kt-login__account-msg"> -->
<!-- 									Don't have an account yet ? -->
<!-- 								</span> -->
<!-- 								&nbsp;&nbsp; -->
								<a href="javascript:;" id="kt_login_signup" class="kt-login__account-link">회원가입</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- end:: Page -->

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

		<!--begin::Page Scripts(used by this page) -->
		<script src="../assets/app/custom/login/login-general.js" type="text/javascript"></script>

		<!--end::Page Scripts -->

		<!--begin::Global App Bundle(used by all pages) -->
		<script src="../assets/app/bundle/app.bundle.js" type="text/javascript"></script>

		<!--end::Global App Bundle -->
		
		
	</body>

	<!-- end::Body -->
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	<!--Daum Postcode API  -->
    function postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                   
                
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("juso").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("extraJuso").focus();
            }
        }).open();
    }
    
    //숫자만 입력
	function onlyNumber(event){
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
			return;
		else
			return false;
	}
	
	//문자 지우기
	function removeChar(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
			return;
		else
			event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}
    
	//팝업창 키우기
	function openPopUp()
    {
        // window.name = "부모창 이름"; 
        window.name = "parentForm";
        // window.open("open할 window", "자식창 이름", "팝업창 옵션");
        window.open("profile/signUpPopUp.jsp",
                "childForm", "width=500, height=300, resizable = no, scrollbars = no");    
    }

	//비밀번호 확인 jquery
$(function(){
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("input").keyup(function(){
            var pass=$("#password1").val();
            var rpass=$("#rpassword1").val();
            if(pass != "" && rpass != ""){
                if(pass == rpass){
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                }else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                }    
            }
            else{
                $("#alert-success").hide();
                $("#alert-danger").hide();
               
            }     
        });
    });

	
	
	//회원가입 유효성 검사
	function validate(){
		var name = document.getElementById("name").value;
		var signUpid = document.getElementById("signUpid").value;
		var pass = document.getElementById("password1").value;
		var rpass = document.getElementById("rpassword1").value;
		
		if(name == ""){
			alert("이름을 입력해주세요.");
			document.getElementById("name").focus();
			return false;
		}
		
		else if(signUpid == ""){
			alert("ID를 입력해주세요.");
			document.getElementById("signUpid").focus();
			return false;
		}
		
		else if(pass == "" || rpass == ""){
			alert("비밀번호를 입력해주세요.");
			document.getElementById("password1").focus();
			return false;
		}
		else if(pass != rpass){
			alert("비밀번호가 일치하지 않습니다.");
			document.getElementById("password1").focus();
			return false;
		}
		else{
			return true;
		}
	}
	
	
	
	//로그인 유효성 검사
	function validateLogin(){
		var id = document.getElementById("id").value;
		var pass = document.getElementById("password").value;
		
		if(id == ""){
			alert("ID를 입력해주세요.");
			document.getElementById("id").focus();
			return false;
		}
		else if(pass == ""){
			alert("비밀번호를 입력해주세요.");
			document.getElementById("password").focus();
			return false;
		}
		else{
			return true;
		}
		
	}
	
	
      
//엔터막기		   
$(document).keypress(function(e) { if (e.keyCode == 13) e.preventDefault(); });

		  
	
</script>

	
</html>