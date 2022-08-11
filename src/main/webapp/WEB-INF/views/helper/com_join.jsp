<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

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
	<%@ include file="../include/header.jsp"%>

	<!--아이디 비밀번호 데이터 검증 추후 추가 예정-->
	
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4 user-join-form">
					<div class="user-title">
						<h1>기관 회원가입</h1>
					</div>

					<br>

					<form action="#" method="post" id="#">

						<div class="form-group">
							<label for="id">아이디</label>
							<div class="input-group">
								<input type="text" name="#" class="form-control" id="#"
									placeholder="아이디를 입력하세요">
								<div class="input-group-addon">
									<button type="button" class="btn btn-primary" id="id-check-btn">중복
										확인</button>
								</div>
							</div>
							<!--<span id="#">*필수 사항입니다.</span>
                            자바스크립트에서 추가 예정-->
						</div>

						<div class="form-group">
							<label for="password">비밀번호</label> <input type="password"
								name="#" class="form-control" id="#" placeholder="비밀번호를 입력하세요">
							<!--<span id="#"></span>
                            자바스크립트에서 추가 예정-->
						</div>

						<div class="form-group">
							<label for="password-confrim">비밀번호 확인</label> <input
								type="password" class="form-control" id="#"
								placeholder="비밀번호를 확인해주세요.">
							<!--<span id="#"></span>
                            자바스크립트에서 추가 예정-->
						</div>

						<div class="form-group email-form">
							<label for="email">이메일</label>
							<div class="input-group">
								<input type="email" name="#" class="form-control" id="#"
									placeholder="abcd@naver.com">
								<div class="input-group-addon">
									<button type="button" id="email-check-btn"
										class="btn btn-primary">이메일 인증</button>
								</div>
							</div>

							<div class="mail-check-box">
								<input type="text" class="form-control mail-check-input"
									placeholder="인증번호를 입력하세요." maxlength="#" disabled="disabled">
								<span id="mail-check-warn"></span>
							</div>
						</div>

						<div class="form-group checkbox">
							<div>
								<strong>기관 약관 동의</strong>
							</div>
							<label> <script>
                                     
                                </script> <input type="checkbox" id="ok1"><a
								href="#join-modal1" data-toggle="modal">약관1</a> <br> <input
								type="checkbox" id="ok2"><a href="#join-modal2"
								data-toggle="modal">약관2</a> <br> <input type="checkbox"
								id="ok3"><a href="#join-modal3" data-toggle="modal">약관3</a>
								<br>
							</label>
						</div>

						<div class="form-group">
							<button type="button" id="join-btn"
								class="btn btn-lg btn-info btn-block">회원가입</button>
						</div>

					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	

	<!-- 모달 영역 -->
	<div id="join-modal1" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						<strong>약관1</strong>
					</h4>
				</div>
				<div class="modal-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Morbi at ultricies mi. Suspendisse potenti. Integer sit amet
						lobortis nibh, quis commodo sapien. Cras dolor risus, scelerisque
						id porttitor ac, scelerisque nec justo. Maecenas nec dolor quis
						risus dignissim malesuada et vitae ipsum. Aenean malesuada, tellus
						nec pretium dapibus, magna justo sollicitudin ex, eget pretium est
						eros ut justo. Phasellus et scelerisque lectus. Proin malesuada
						lacinia felis non scelerisque. Aliquam quis eros feugiat,
						imperdiet libero volutpat, vulputate dolor. Nunc cursus ut sapien
						in consequat. Aenean diam sem, posuere sed elit non, pharetra
						luctus eros. Fusce semper purus at velit eleifend accumsan. Duis
						placerat dolor hendrerit purus congue dictum eget et lorem.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="okBtn">동의</button>
					<button type="button" class="btn btn-default" id="closeModalBtn">취소</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 약관동의 모달 체크박스 기능 추가 해야 함 -->
	<script>
        // 모달 동의 버튼 이벤트  
        $('#okBtn').on('click', function () {
            $('#ok1').prop('checked', true);
            $('#ok1').attr('checked', true);
            $('#join-modal1').modal('hide');
        });
        // 모달 안의 취소 버튼에 이벤트
        $('#closeModalBtn').on('click', function () {
            $('#join-modal1').modal('hide');
        });
    </script>
    
    <%@ include file="../include/footer.jsp"%>
    

</body>
</html>





























