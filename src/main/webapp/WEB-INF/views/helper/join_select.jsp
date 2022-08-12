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

	<div class="container-fluid join-wrap">
		<h1 class="join-title">회 원 가 입</h1>
		<span>본인이 해당하는 회원가입 유형을 선택해 주세요.</span> <br>
		<br>

		<div class="join-select">
			<div class="join-btn-wrap">
				<button id="join-user-btn" type="button"
					class="btn btn-default btn-primary">
					<div>
						<img width="100px" src="${pageContext.request.contextPath }/resources/img/user.svg" alt="user">
					</div>
					개 인
				</button>
				<button id="join-com-btn" type="button"
					class="btn btn-default btn-info">
					<div>
						<img width="100px" src="${pageContext.request.contextPath }/resources/img/company.svg"
							alt="company">
					</div>
					기 관
				</button>
			</div>
		</div>
	
	<hr>

	<script>
        // 개인 회원가입 버튼 이벤트
        $('#join-user-btn').on('click', function () {
            alert("정말 개인 회원가입을 진행하시겠습니까?");
        });
        // 기관 회원가입 버튼 이벤트
        $('#join-com-btn').on('click', function () {
            alert("정말 기관 회원가입을 진행하시겠습니까?");
        });
    </script>
    
    
    </div>
  
	<%@ include file="../include/footer.jsp"%>
</body>
</html>