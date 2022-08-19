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
                    <div class="panel-title">아이디 찾기</div>
                </div>

                <div style="padding-top:30px" class="panel-body">

                    <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form action="<c:url value="/find/find_my_id_result" />" method="POST" id="loginform" class="form-horizontal" role="form">

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

		const getEmailCheck = RegExp(/\S+@\S+\.\S+/);
		let chk1 = false, chk2 = false, chk3 = false;
		var emailCode;
		
		// 이메일 체크
		$('#user_email').keyup(function() {
			
			if($(this).val() === '') {
				$(this).css('background', 'pink');
				$('#emailChk').html('<b style="font-size: 14px; color: red">[이메일은 필수 정보입니다!]</b>');
				chk1 = false;
			}
			else if(!getEmailCheck.test($(this).val()) || $(this).val().length > 100) {
				$(this).css('background', 'pink');
				$('#emailChk').html('<b style="font-size: 14px; color: red">[이메일 형식이 맞아야 하고 100자 이하여야 합니다!]</b>');
				chk1 = false;
			}
			else {
				$(this).css('background', 'white');
				$('#emailChk').html('<b style="font-size: 14px; color: green">[이메일 입력 완료!]</b>');
				chk1 = true;
			}
		});
		
		// 인증번호 전송
		$('#user_email_check_btn').click(function() {
			
			// 입력란에 입력한 이메일 주소 얻어오기
			const email = $('#user_email').val();
			
			// 실제로 그 이메일 주소로 쏘기 (나중에)
			
			// 먼저 이메일 주소가 유효한지 통신
			$.ajax({
					type: 'POST', 
					url: '/myweb/member/checkIdByEmail', 
					contentType: 'application/json',
					dataType: 'text', 
					async: false,
					data: email,
					success: function(result) {
						if (result === "found") {
							chk2 = true;
						} else {
							alert('이메일 정보가 존재하지 않습니다.')
							chk2 = false;
						}
					},
					error: function(status, error) {
						console.log('이메일 확인 실패');
						console.log(status, error);
					}
			});
			
			// 지금은 전송버튼 누르면 인증번호가 바로 생성되게만 하기
			if (chk2) {
				
				$.ajax({
					type: 'POST', 
					url: '/myweb/member/checkEmail', 
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
				chk3 = true;
			} else {
				$('#emailCodeChk').html('<b style="font-size: 14px; color: red">[인증번호가 일치하지 않습니다!]</b>');
			}
		});
		
		/* // 다음 페이지 버튼 눌렸을 시
		$('#next_page').click(function() {
			
				이메일 기반으로 유저를 찾아와야 함
				
				1. 해당 기능을 하는 서비스 인터페이스, 서비스, 매퍼를 각각 1개씩 완성
				2. 컨트롤러단에서 서비스를 호출하는 @PostMapping 메서드를 생성
				3. 컨트롤러측에서 ModelAndView를 통해 옮겨질 페이지를 넘겨주고
					프론트측에 아이디 값을 RedirectAttributes ra, ra.addFlashAttribute("id", memUserId);로 넘겨주기
			
			
			if (chk1 && chk2 && chk3) {
				
				// 입력란에 입력한 이메일 주소 얻어오기
				const email = $('#user_email').val();
				
				$.ajax({
					type: 'POST', 
					url: '/myweb/member/selectIdByEmail', 
					contentType: 'application/json',
					dataType: 'text', 
					data: email,
					success: function() {
						location.href='/myweb/find/find_my_id_result';
					},
					error: function(status, error) {
					}
				});
			}
		}); */
	});
	
</script>
</body>
</html>