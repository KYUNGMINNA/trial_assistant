<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인 페이지</title>

    <!-- 부트스트랩 3.1.1 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <style>
        .container {
            text-align: center;
        }
    </style>

<body>

    <%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="jumbotron">
        <div class="container text-center">
            <h1>메인 페이지</h1>
            <p>추가 텍스트란</p>
        </div>
    </div>

    <div class="container-fluid bg-3 text-center">
        <h3>하단 공간</h3><br>
        <div class="row">
            <div class="col-sm-3">
                <p>한 칸 예</p>
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
            </div>
            <div class="col-sm-3">
                <p>한 칸 예</p>
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
            </div>
            <div class="col-sm-3">
                <p>한 칸 예</p>
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
            </div>
            <div class="col-sm-3">
                <p>한 칸 예</p>
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
            </div>
        </div>
    </div><br><br>

    <footer class="container-fluid text-center">
        <p>임시 Footer</p>
    </footer>

<script>
	const msg = '${msg}';
	if(msg === 'pwChangeSuccess') {
		alert('비밀번호가 성공적으로 변경되었습니다.');
	} else if (msg === 'pwChangeFailed') {
		alert('비밀번호 변경에 실패했습니다.');
	}
</script>
</body>

</html>