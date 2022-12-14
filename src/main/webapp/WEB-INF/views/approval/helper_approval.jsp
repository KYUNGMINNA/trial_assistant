<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입 결과</title>

    <!-- 부트스트랩 3.1.1 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <style>
        .container {
            text-align: center;
            font-size: 25px;

        }

        button {
            margin: 50px;
        }
    </style>


</head>

<body>

    <%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="container">
        <h1>회원 가입이 완료되었습니다.</h1>
        <a href="/trial" type="button" class="btn btn-primary btn-lg">메인 화면</a>
    </div>

    <%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>

</html>