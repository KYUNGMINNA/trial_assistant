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

	<hr>

	<section class="container-fluid join-wrap">
		<h1 class="join-title">ȸ �� �� ��</h1>
		<span>������ �ش��ϴ� ȸ������ ������ ������ �ּ���.</span> <br>
		<br>

		<div class="join-select">
			<div class="join-btn-wrap">
				<button id="join-user-btn" type="button"
					class="btn btn-default btn-primary">
					<div>
						<img width="100px" src="${pageContext.request.contextPath }/resources/img/user.svg" alt="user">
					</div>
					�� ��
				</button>
				<button id="join-com-btn" type="button"
					class="btn btn-default btn-info">
					<div>
						<img width="100px" src="${pageContext.request.contextPath }/resources/img/company.svg"
							alt="company">
					</div>
					�� ��
				</button>
			</div>
		</div>
	</section>

	<hr>

	<script>
        // ���� ȸ������ ��ư �̺�Ʈ
        $('#join-user-btn').on('click', function () {
            alert("���� ���� ȸ�������� �����Ͻðڽ��ϱ�?");
        });
        // ��� ȸ������ ��ư �̺�Ʈ
        $('#join-com-btn').on('click', function () {
            alert("���� ��� ȸ�������� �����Ͻðڽ��ϱ�?");
        });
    </script>

</body>
</html>