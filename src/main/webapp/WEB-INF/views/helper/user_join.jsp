<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<!--���� ������ �߰�-->
<link
	href="${pageContext.request.contextPath }/resources/css/choiStyle.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<!--���̵� ��й�ȣ ������ ���� ���� �߰� ����-->
	<section>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4 user-join-form">
					<div class="user-title">
						<h1>���� ȸ������</h1>
					</div>

					<br>

					<form action="#" method="post" id="#">

						<div class="form-group">
							<label for="id">���̵�</label>
							<div class="input-group">
								<input type="text" name="#" class="form-control" id="#"
									placeholder="���̵� �Է��ϼ���">
								<div class="input-group-addon">
									<button type="button" class="btn btn-primary" id="id-check-btn">�ߺ�
										Ȯ��</button>
								</div>
							</div>
							<!--<span id="#">*�ʼ� �����Դϴ�.</span>
                            �ڹٽ�ũ��Ʈ���� �߰� ����-->
						</div>

						<div class="form-group">
							<label for="password">��й�ȣ</label> <input type="password"
								name="#" class="form-control" id="#" placeholder="��й�ȣ�� �Է��ϼ���">
							<!--<span id="#"></span>
                            �ڹٽ�ũ��Ʈ���� �߰� ����-->
						</div>

						<div class="form-group">
							<label for="password-confrim">��й�ȣ Ȯ��</label> <input
								type="password" class="form-control" id="#"
								placeholder="��й�ȣ�� Ȯ�����ּ���.">
							<!--<span id="#"></span>
                            �ڹٽ�ũ��Ʈ���� �߰� ����-->
						</div>

						<div class="form-group email-form">
							<label for="email">�̸���</label>
							<div class="input-group">
								<input type="email" name="#" class="form-control" id="#"
									placeholder="abcd@naver.com">
								<div class="input-group-addon">
									<button type="button" id="email-check-btn"
										class="btn btn-primary">�̸��� ����</button>
								</div>
							</div>

							<div class="mail-check-box">
								<input type="text" class="form-control mail-check-input"
									placeholder="������ȣ�� �Է��ϼ���." maxlength="#" disabled="disabled">
								<span id="mail-check-warn"></span>
							</div>
						</div>

						<div class="form-group checkbox">
							<div>
								<strong>���� ��� ����</strong>
							</div>
							<label> <script>
                                     
                                </script> <input type="checkbox" id="ok1"><a
								href="#join-modal1" data-toggle="modal">���1</a> <br> <input
								type="checkbox" id="ok2"><a href="#join-modal2"
								data-toggle="modal">���2</a> <br> <input type="checkbox"
								id="ok3"><a href="#join-modal3" data-toggle="modal">���3</a>
								<br>
							</label>
						</div>

						<div class="form-group">
							<button type="button" id="join-btn"
								class="btn btn-lg btn-info btn-block">ȸ������</button>
						</div>

					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</section>

	<!-- ��� ���� -->
	<div id="join-modal1" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-header" style="text-align: center;">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">��</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">
						<strong>���1</strong>
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
					<button type="button" class="btn btn-primary" id="okBtn">����</button>
					<button type="button" class="btn btn-default" id="closeModalBtn">���</button>
				</div>
			</div>
		</div>
	</div>

	<!-- ������� ��� üũ�ڽ� ��� �߰� �ؾ� �� -->
	<script>
        // ��� ���� ��ư �̺�Ʈ  
        $('#okBtn').on('click', function () {
            $('#ok1').prop('checked', true);
            $('#ok1').attr('checked', true);
            $('#join-modal1').modal('hide');
        });
        // ��� ���� ��� ��ư�� �̺�Ʈ
        $('#closeModalBtn').on('click', function () {
            $('#join-modal1').modal('hide');
        });
    </script>

</body>
</html>





























