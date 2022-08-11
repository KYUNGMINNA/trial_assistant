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
    .table>tbody>tr>th {
      text-align: center;
      vertical-align: middle;
    }

    .table>tbody>tr>td {
      text-align: center;
      vertical-align: middle;
    }
  </style>

</head>

<body>
  <div class="container">

    <table class="table">
      <tbody>
        <tr>
          <td colspan="3">
            <h1 class="text-center">아이디 찾기 결과</h1>
          </td>
        </tr>
        <tr class="active">
          <td colspan="3">
            <h3 class="text-center">홍*길님의 아이디는abc******입니다.</h3>
          </td>
        </tr>
        <tr>
          <td><a href="">회원가입</a></td>
          <td><a href="">아이디찾기</a></td>
          <td><a href="">비밀번호찾기</a></td>
        </tr>
        <tr>
          <td colspan="3">
            <button type="button" class="btn btn-primary btn-lg">다음 페이지</button>
          </td>
        </tr>
      </tbody>

    </table>
  </div>
</body>

</html>