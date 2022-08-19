<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 정보 수정</title>

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
                    <div class="panel-title">비밀번호 재설정</div>
                </div>

                <div style="padding-top:30px" class="panel-body">

                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form action="<c:url value="/find/reset_pw" />" method="POST" id="loginform" class="form-horizontal" role="form">
						
						<input id="user_id" type="hidden" class="form-control" name="userId" value="${member.memUserId}">
						
						<strong id="pwChk"></strong>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="user_pw" type="password" class="form-control" name="userPw" value=""
                                placeholder="비밀번호 입력">
                        </div>
						
						<strong id="pwChk2"></strong>
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-ok"></i></span>
                            <input id="user_pw_check" type="password" class="form-control" name="userPwCheck" value=""
                                placeholder="비밀번호 확인">
                        </div>
                        
                        <div style="margin-top:10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                            	<button id="pw-reset-btn" type="submit" form="loginform" class="btn btn-success disabled">초기화</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
     <%@ include file="/WEB-INF/views/include/footer.jsp" %>
	
	<script>
	const getPwCheck = RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	let chk1 = false, chk2 = false;

	$(function() {
		// 비밀번호 체크
		$('#user_pw, #user_pw_check').keyup(function() {
			
			if($('#user_pw').val() === '') {
				$('#user_pw').css('background', 'pink');
				$('#pwChk').html('<b style="font-size: 14px; color: red">[비밀번호는 필수 정보입니다!]</b>');
				chk1 = false;
			}
			else if(!getPwCheck.test($('#user_pw').val()) || $('#user_pw').val().length < 8) {
				$('#user_pw').css('background', 'pink');
				$('#pwChk').html('<b style="font-size: 14px; color: red">[특수문자 포함 8자 이상!]</b>');
				chk1 = false;
			}
			else {
				$('#user_pw').css('background', 'lightblue');
				$('#pwChk').html('<b style="font-size: 14px; color: green">[비밀번호 입력 완료!]</b>');
				chk1 = true;
			}
			
			if($('#user_pw_check').val() === '') {
				$('#user_pw_check').css('background', 'pink');
				$('#pwChk2').html('<b style="font-size: 14px; color: red">[비밀번호 확인은 필수 정보입니다!]</b>');
				chk2 = false;
			}
			else if($('#user_pw_check').val() !== $('#user_pw').val()) {
				$('#user_pw_check').css('background', 'pink');
				$('#pwChk2').html('<b style="font-size: 14px; color: red">[비밀번호와 일치하지 않습니다!]</b>');
				chk2 = false;
			} else {
				$('#user_pw_check').css('background', 'lightblue');
				$('#pwChk2').html('<b style="font-size: 14px; color: green">[비밀번호 확인 완료!]</b>');
				chk2 = true;
			}
			
			if (chk1 && chk2) {
				$('#pw-reset-btn').removeAttr('disabled');
				$('#pw-reset-btn').removeClass('disabled');
			}
		});
	});
</script>
</body>
</html>