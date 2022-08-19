<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>

    <!-- 부트스트랩 3.1.1 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
    
    <!-- 개인 정의 스타일 추가 -->
    <style>
        .container {
            text-align: center;
        }
        .table > tbody > tr > th {
            text-align: center;
            vertical-align: middle;
        }
        .table > tbody > tr > td {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>

<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
    <div class="container">

        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">비밀번호 찾기</div>
                </div>

                <div style="padding-top:30px" class="panel-body">

                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form action="<c:url value="/find/reset_my_password" />" method="POST" id="loginform" class="form-horizontal" role="form">
						
						<strong id="idChk"></strong>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="user_id" type="text" class="form-control" name="userId" value=""
                                placeholder="아이디 입력">
                        </div>
						
						<strong id="emailChk"></strong>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input id="user_email" type="text" class="form-control" name="userEmail" value=""
                                placeholder="abc@naver.com">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" id="user_email_check_btn" type="button">전송</button>
                                </span>
                        </div>

						<strong id="emailCodeChk"></strong>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            <input id="user_email_check" type="text" class="form-control" name="password"
                                placeholder="인증번호 입력">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" id="user_check_code_btn" type="button">인증번호 확인</button>
                                </span>
                        </div>

                        <div style="margin-top:10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                            	<button type="submit" form="loginform" class="btn btn-primary">다음 페이지</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
 <%@ include file="/WEB-INF/views/include/footer.jsp" %>
 
<script>

$(function() {

	const getIdCheck = RegExp(/^[a-zA-Z0-9]{4,50}$/);
	const getEmailCheck = RegExp(/\S+@\S+\.\S+/);
	let chk1 = false, chk2 = false, chk3 = false, chk4 = false;
	var emailCode;
	
	// ID 체크
	$('#user_id').keyup(function() {
		
		if($(this).val() === '') {
			$(this).css('background', 'pink');
			$('#idChk').html('<b style="font-size: 14px; color: red">[아이디는 필수 정보입니다!]</b>');
			chk1 = false;
		}
		else if(!getIdCheck.test($(this).val())) {
			$(this).css('background', 'pink');
			$('#idChk').html('<b style="font-size: 14px; color: red">[영문자, 숫자조합 4-50자!]</b>');
			chk1 = false;
		}
		else
		{
			$(this).css('background', 'white');
			$('#idChk').html('<b style="font-size: 14px; color: green">[아이디가 규칙과 일치합니다!]</b>');
			chk1 = true;
		}
	});
	
	// 이메일 체크
	$('#user_email').keyup(function() {
		
		if($(this).val() === '') {
			$(this).css('background', 'pink');
			$('#emailChk').html('<b style="font-size: 14px; color: red">[이메일은 필수 정보입니다!]</b>');
			chk2 = false;
		}
		else if(!getEmailCheck.test($(this).val()) || $(this).val().length > 100) {
			$(this).css('background', 'pink');
			$('#emailChk').html('<b style="font-size: 14px; color: red">[이메일 형식이 맞아야 하고 100자 이하여야 합니다!]</b>');
			chk2 = false;
		}
		else {
			$(this).css('background', 'white');
			$('#emailChk').html('<b style="font-size: 14px; color: green">[이메일 입력 완료!]</b>');
			chk2 = true;
		}
	});
	
	// 인증번호 전송
	$('#user_email_check_btn').click(function() {
		
		// 입력란에 입력한 유저 ID 얻어오기
		const id = $('#user_id').val();
		// 입력란에 입력한 이메일 주소 얻어오기
		const email = $('#user_email').val();
		
		// 아이디하고 이메일 주소를 동시에 보내야 함
		const memberInfo = {
				"memUserId" : id,
				"memEmail" : email
		};
		
		$.ajax({
				type: 'POST', 
				url: '/trial/member/resetPwByIdAndEmail', 
				contentType: 'application/json',
				dataType: 'text', 
				async: false,
				data: JSON.stringify(memberInfo),
				success: function(result) {
					if (result === "found") {
						chk3 = true;
					} else {
						alert('아이디나 이메일이 유효하지 않습니다.')
						chk3 = false;
					}
				},
				error: function(status, error) {
					console.log('확인 실패');
					console.log(status, error);
				}
		});
		
		// 지금은 전송버튼 누르면 인증번호가 바로 생성되게만 하기
		if (chk3) {
			
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
			});
		} else {
			alert('이메일 주소가 올바른지 확인하십시오');
		}
	});
	
	// 인증번호 확인
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
});

</script>
</body>
</html>