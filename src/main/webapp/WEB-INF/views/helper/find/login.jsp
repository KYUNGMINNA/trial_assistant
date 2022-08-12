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
  
<style>
    .container {
        text-align: center;
    }

    a {
        margin: 5px;
    }
</style>

<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="container">
        <form action="#">
            <h1>로그인</h1>
            <input type="text" class="form-control" placeholder="아이디">
            <input type="password" class="form-control " placeholder="비밀번호 입력">
            
            <button class="btn btn-primary btn-lg" type="button">입력</button><br>
            <a href="#">회원가입</a>
            <a href="#">아이디찾기</a>
            <a href="#">비밀번호찾기</a>
        </form>
        
    </div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>