<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 가입</title>

<script src="https://kit.fontawesome.com/89b715172c.js"
	crossorigin="anonymous">
	</script>

<%-- 
			${pageContext.request.contextPath} == <c:url value='' />
		 --%>
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!--개인 디자인 추가-->
<link
	href="${pageContext.request.contextPath }/resources/css/choiStyle.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

	<!--아이디 비밀번호 데이터 검증 추후 추가 예정-->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4 user-join-form">
				<div class="user-title">
					<h1 style="text-align:center;">회원가입</h1>
				</div>

				<br>

				<form action="" method="post" id="signUpForm">

					<div class="form-group">
						<label for="id">아이디</label>
						<strong id="idChk"></strong>
						<div class="input-group">
							<input type="text" name="memUserId" class="form-control" id="user_id" placeholder="아이디를 입력하세요">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button" id="user_id_check_btn">중복 확인</button>
							</span>
						</div>
					</div>

					<div class="form-group">
						<label for="password">비밀번호</label>
						<strong id="pwChk"></strong>
						<input type="password" name="memUserPw" id="user_pw" class="form-control" 
							placeholder="비밀번호를 입력하세요">
					</div>

					<div class="form-group">
						<label for="password-confrim">비밀번호 확인</label>
						<strong id="pwChk2"></strong>
						<input type="password" class="form-control" id="user_pw_check"
							placeholder="비밀번호를 확인해주세요.">
					</div>

					<div class="form-group email-form">
						<label for="email">이메일</label>
						<strong id="emailChk"></strong>
						<div class="input-group">
							<input type="email" name="memEmail" class="form-control" id="user_email" placeholder="abcd@naver.com">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="button" id="user_email_check_btn">메일 인증</button>
							</span>
						</div>

					<div class="mail-check-box">
						<label for="email-check-box">인증번호 확인</label>
						<strong id="emailCodeChk"></strong>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="인증번호를 입력하세요."
								maxlength="6" disabled="disabled" id="user_email_check">
							<span class="input-group-btn">
									<button class="btn btn-primary" type="button" id="user_check_code_btn">인증 확인</button>
							</span>
						</div>
					</div>
					</div>

					<div class="form-group">
						<button type="button" id="signup_btn" class="btn btn-lg btn-success btn-block">회원 가입</button>
					</div>

				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>

	<!-- 약관동의 모달 체크박스 기능 추가 해야 함 -->
	<script>
	
	// 제이쿼리 시작
	$(function() {
		
		//각 입력값들의 유효성 검증을 위한 정규표현식을 변수로 선언.
		const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,50}$/);
		const getPwCheck = RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
		const getNameCheck = RegExp(/^[가-힣]+$/);
		const getEmailCheck = RegExp(/\S+@\S+\.\S+/);
		
		//입력값 중 하나라도 만족하지 못한다면 회원가입 처리를 막기 위한 논리형 변수 선언.
		let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
		
		// ID 체크
		$('#user_id').keyup(function() {
			
			if($(this).val() === '') {
				$(this).css('background', 'pink');
				$('#idChk').html('<b style="font-size: 14px; color: red">[아이디는 필수 정보입니다!]</b>');
				chk1 = false;
			}
			//아이디 입력값 유효성 검증 (영문, 숫자로만 4~50글자 허용)
			//정규표현식변수.test('검증하고 싶은 값') -> return boolean type
			//정규표현식에 어긋난 값이면 false, 올바른 값이면 true.
			else if(!getIdCheck.test($(this).val())) {
				$(this).css('background', 'pink');
				$('#idChk').html('<b style="font-size: 14px; color: red">[영문자, 숫자조합 4-50자!]</b>');
				chk1 = false;
			}
			else
			{
				$(this).css('background', 'white');
				$('#idChk').html('<b style="font-size: 14px; color: green">[아이디가 규칙과 일치합니다!]</b>');
				chk1 = false;
			}
		});
		
		// ID 중복확인 버튼 체크
		$('#user_id_check_btn').click(function() {

			const id = $('#user_id').val();
			
			$.ajax({
				type: 'POST', 
				url: '/trial/member/checkId', 
				contentType: 'application/json',
				dataType: 'text', 
				data: id,
				success: function(result) {					
					if (result === "available") {
						var choose = confirm("해당 아이디는 생성이 가능합니다. 확정하시겠습니까?");
						
						if (choose) {
							$('#user_id').prop('disabled', true);
							$('#user_id').css('backgroundColor', '#D3D3D3');
							chk1 = true;
						}
					} else {
						$('#idChk').html('<b style="font-size: 14px; color: red">[이 아이디는 중복되었습니다!]</b>');
					}
				},
				error: function(status, error) {
					console.log('인증번호 발송 실패!');
					console.log(status, error);
				}
				
			}); //end ajax (아이디 중복 확인)
		});
		
		// 비밀번호 체크
		$('#user_pw, #user_pw_check').keyup(function() {
			
			if($('#user_pw').val() === '') {
				$('#user_pw').css('background', 'pink');
				$('#pwChk').html('<b style="font-size: 14px; color: red">[비밀번호는 필수 정보입니다!]</b>');
				chk2 = false;
			}
			else if(!getPwCheck.test($('#user_pw').val()) || $('#user_pw').val().length < 8) {
				$('#user_pw').css('background', 'pink');
				$('#pwChk').html('<b style="font-size: 14px; color: red">[특수문자 포함 8자 이상!]</b>');
				chk2 = false;
			}
			else {
				$('#user_pw').css('background', 'lightblue');
				$('#pwChk').html('<b style="font-size: 14px; color: green">[비밀번호 입력 완료!]</b>');
				chk2 = true;
			}
			
			if($('#user_pw_check').val() === '') {
				$('#user_pw_check').css('background', 'pink');
				$('#pwChk2').html('<b style="font-size: 14px; color: red">[비밀번호 확인은 필수 정보입니다!]</b>');
				chk3 = false;
			}
			else if($('#user_pw_check').val() !== $('#user_pw').val()) {
				$('#user_pw_check').css('background', 'pink');
				$('#pwChk2').html('<b style="font-size: 14px; color: red">[비밀번호와 일치하지 않습니다!]</b>');
				chk3 = false;
			} else {
				$('#user_pw_check').css('background', 'lightblue');
				$('#pwChk2').html('<b style="font-size: 14px; color: green">[비밀번호 확인 완료!]</b>');
				chk3 = true;
			}
		});
		
		// 이메일 체크
		$('#user_email').keyup(function() {
			
			if($(this).val() === '') {
				$(this).css('background', 'pink');
				$('#emailChk').html('<b style="font-size: 14px; color: red">[이메일은 필수 정보입니다!]</b>');
				chk4 = false;
			}
			else if(!getEmailCheck.test($(this).val()) || $(this).val().length > 100) {
				$(this).css('background', 'pink');
				$('#emailChk').html('<b style="font-size: 14px; color: red">[이메일 형식이 맞아야 하고 100자 이하여야 합니다!]</b>');
				chk4 = false;
			}
			else {
				$(this).css('background', 'white');
				$('#emailChk').html('<b style="font-size: 14px; color: green">[이메일 입력 완료!]</b>');
			}
		});
		
		var emailCode;
		
		// 이메일 인증번호 발송 부분
		$('#user_email_check_btn').click(function() {
			const email = $('#user_email').val();
			
			$.ajax({
				type: 'POST', 
				url: '/trial/member/checkEmail', 
				contentType: 'application/json',
				dataType: 'text', 
				data: email,
				success: function(recievedCode) {
					emailCode = recievedCode;
					alert('인증번호가 전송되었습니다.');
					$('#user_email_check').prop('disabled', false);
				},
				error: function(status, error) {
					console.log('인증번호 발송 실패!');
					console.log(status, error);
				}
				
			}); //end ajax (아이디 중복 확인)
		});
		
		// 인증번호 확인 버튼 누를 시 통신
		$('#user_check_code_btn').click(function() {
			
			const inputCode = $('#user_email_check').val();
			
			if (inputCode === emailCode) {
				$('#user_email_check').prop('disabled', true);
				$('#emailCodeChk').html('<b style="font-size: 14px; color: green">[인증번호가 확인되었습니다!]</b>');
				chk4 = true;
			} else {
				$('#emailCodeChk').html('<b style="font-size: 14px; color: red">[인증번호가 일치하지 않습니다!]</b>');
			}
		});

		// 버튼 눌렀을 때 비동기 통신
		$('#signup_btn').click(function() {
	
			const id = $('#user_id').val();
			const pw = $('#user_pw').val();
			const email = $('#user_email').val();
	
			const member = {
				'memUserId': id,
				'memPw': pw,
				'memEmail': email
			};
			
			if (chk1 && chk2 && chk3 && chk4) {
				$.ajax({
					type: 'POST',
					url: '/trial/member/signup',
					contentType: 'application/json',
					dataType: 'text',
					data: JSON.stringify(member),
					success: function (result) {
						console.log('통신 성공 : ' + result);
						alert('회원 가입에 성공하였습니다.');
						location.href = '${pageContext.request.contextPath}/approval/helper_approval';
					},
					error: function () {
						alert('모종의 이유로 회원 가입 실패');
					}
				});
			} else {
				alert("모든 입력사항이 올바른지 확인하십시오.");
			}
		});
		
	});	// 제이쿼리 종료
	
	
	</script>

</body>
</html>