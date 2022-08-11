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
    <div class="container">
        <h1>아이디 찾기</h1>
        <table class="table table-bordered">
            <tbody>
                <tr>
                    <th>이름</th>

                    <td><input type="tel" class="form-control" id="helperPhoneTel" placeholder="이름을 입력해주세요."></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td>
                        <div class="input-group">
                            <input type="tel" class="form-control" placeholder="example@abc.co.kr"value="">
                            <span class="input-group-btn">
                                <button class="btn btn-primary" type="button">전송</button>
                            </span>
                        </div>

                    </td>
                </tr>

                <tr>
                    <th>인증번호</th>
                    <td>
                        <div class="input-group">
                            <input type="tel" class="form-control" placeholder="인증번호 입력" value="">
                            <span class="input-group-btn">
                                <button class="btn btn-primary" type="button">인증번호 확인</button>
                            </span>
                        </div>
                    </td>

                </tr>

            </tbody>

        </table>
        <button type="button" class="btn btn-primary btn-lg">다음 페이지</button>
    </div>

</body>

</html>