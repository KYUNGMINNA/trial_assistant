<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 접수 내역 조회</title>

    <!-- 부트스트랩 3.1.1 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <!-- 개인 정의 스타일 추가 -->
    <style>
        .table>thead>tr>th {
            text-align: center;
            vertical-align: middle;
        }

        .table>tbody>tr>td {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>

<!-- 
    표시되는 유저를 고정으로 박아놨는데 나중에 동적으로 처리
-->

<body>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="container">
        <form action="#" class="col-md-12">
            <h2 class="col-md-8">조력자 신청 관리 >> 조력자 신청자 승인 관리</h2>
            <div class="input-group col-md-3 col-md-offset-8" style="margin-top: 20px;">
                <input type="text" class="form-control" placeholder="조력 신청자 검색">
                <div class="input-group-btn">
                    <button class="btn btn-primary" type="submit">
                        <i class="glyphicon glyphicon-search"></i> 검색
                    </button>
                </div>
            </div>
        </form>
        <table class="table">
            <thead>
                <tr>
                    <th class="col-md-2">이름</th>
                    <th class="col-md-4">지원 공고</th>
                    <th class="col-md-2">조력자 유형</th>
                    <th class="col-md-2">모집 기간</th>
                    <th class="col-md-2">상태</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="col-md-2">홍길동</td>
                    <td class="col-md-4">제 3차 [일반] 감정인 모집 공고</td>
                    <td class="col-md-2">경매</td>
                    <td class="col-md-2">2022.08.04 ~ 2022.09.30</td>
                    <td class="col-md-2">적격</td>
                </tr>
                <tr>
                    <td class="col-md-2">김무개</td>
                    <td class="col-md-4">제 2차 [일반] 감정인 모집 공고</td>
                    <td class="col-md-2">문서</td>
                    <td class="col-md-2">2022.07.15 ~ 2022.11.30</td>
                    <td class="col-md-2">적격</td>
                </tr>
                <tr>
                    <td class="col-md-2">가나다</td>
                    <td class="col-md-4">제 1차 [일반] 감정인 모집 공고</td>
                    <td class="col-md-2">측량</td>
                    <td class="col-md-2">2022.09.04 ~ 2022.09.30</td>
                    <td class="col-md-2">적격</td>
                </tr>
            </tbody>
        </table>
    </div>


    <!--
        pagenation 사용 시

        <li>
        - class 속성에 disabled를 추가하여 disable 시킬 수 있음.
          단, disable 시킬 시 해당 <a> 태그에 대해 tabindex="-1" 을 주어야 함

        - active 속성을 주어 현재 활성화된 페이지라고 표시할 수 있음.
    -->
    <!--
        1. pagenation 객체 생성
        2. 페이지 표시를 js를 통해 동적으로 보여줄 것 (jQuery)
        3. js를 통해 동적으로 한 화면에 표시되는 유저 리스트에 제한을 둘 것 (10명 등)
    -->
    <nav aria-label="" class="text-center">
        <ul class="pagination">
            <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">이전</a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item">
                <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
            </li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">다음</a>
            </li>
        </ul>
    </nav>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>

</html>