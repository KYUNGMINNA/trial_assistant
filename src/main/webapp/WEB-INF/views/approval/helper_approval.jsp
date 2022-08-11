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
   .container{
    text-align: center;
    font-size: 25px;
    
   }
   button{
    margin: 50px;
   }

 </style>


</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="container">  
                       <h1 >승인이 되었습니다.<br>
                    메인페이지로 이동하겠습니다.</h1>
      <button type="button" class="btn btn-primary btn-lg">다음 페이지</button>
    </div>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>
</html>