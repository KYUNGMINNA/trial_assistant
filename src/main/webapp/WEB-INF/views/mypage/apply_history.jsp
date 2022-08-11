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
        .table > thead > tr > th {
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

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

	<div class="col-md-2">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">마이페이지</h3>
			</div>
			<ul class="list-group">
			<li class="list-group-item"><a href="#">나의 정보 수정</a></li>
			<li class="list-group-item"><a href="#">나의 접수 내역 조회</a></li>
			<li class="list-group-item"><a href="#">나의 접수 내역 상세 조회</a></li>
			</ul>
		</div>
	</div>

    <div class="container col-md-10">
        <h4>나의 접수 내역 조회</h4>
        <table class="table table-hover">
            <thead class="">
                <tr>
                    <th>번호</th>
                    <th>공고명</th>
                    <th>접수상태</th>
                    <th>감정인구분</th>
                    <th>사무소명</th>
                    <th>결과보기</th>
                    <th>관리</th>
                </tr>
            </thead>
            <tbody>

                <%-- 
                	<c:forEach var="" items="formList">
                    <tr>
                        <td value="${form.num}"></td>
                        <td value="${form.title}"></td>
                        <td value="${form.status}"></td>
                        <td value="${form.type}"></td>
                        <td value="${form.officeName}"></td>
                        <td> 나중에 결과 보기 버튼을 여기에 visible / non-visible 하게 설정 </td>
                        <td> 접수 상태를 js로 체크해서 수정/삭제를 띄울지 말지 설정 </td>
                    </tr>
                </c:forEach>
                --%>  
                 
                <!-- 더미데이터 테스트 -->
                <tr>
                    <td>1</td>
                    <td>2018년 3차 일반감정인 모집공고</td>
                    <td>승인</td>
                    <td>회계</td>
                    <td>길동사무소</td>
                    <td>
                        <button type="button" class="btn btn-info">
                            보기
                        </button>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>2020년 1차 일반감정인 모집공고</td>
                    <td>승인</td>
                    <td>공사비등(건축)</td>
                    <td>길동사무소</td>
                    <td>
                        <button type="button" class="btn btn-info">
                            보기
                        </button>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary">수정</button>
                        <button type="button" class="btn btn-danger">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>2022년 2차 일반감정인 모집공고</td>
                    <td>접수</td>
                    <td>회계</td>
                    <td>길동사무소</td>
                    <td>
                    </td>
                    <td>
                        <button type="button" class="btn btn-primary">수정</button>
                        <button type="button" class="btn btn-danger">삭제</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>
</html>