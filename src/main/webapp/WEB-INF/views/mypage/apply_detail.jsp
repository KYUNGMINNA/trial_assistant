<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 접수 내역 상세 조회</title>

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

<!-- ajax, json 더미데이터 사용 전까지는 하드한 더미 데이터로 그냥 displaying 하기 -->
<body>

	<%@ include file="include/header.jsp" %>
    
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
        <h4>나의 접수 내역 상세 조회</h4>
        <table class="table table-bordered">
            <tbody>
                <tr>
                    <th>이름</th>
                    <td>홍길동</td>
                    <th>주민등록번호</th>
                    <td>950101 - 1******</td>
                </tr>
                <tr>
                    <th>지원공고</th>
                    <td>2018년 3차 일반감정인 모집공고</td>
                    <th>전화번호</th>
                    <td>000-1234-5678</td>
                </tr>
                <tr>
                    <th>조력자유형</th>
                    <td>회계</td>
                    <th>직업</th>
                    <td>직업</td>
                </tr>
                <tr>
                    <th>모집 기간</th>
                    <td>2018.08.01 ~ 2018.10.30</td>
                    <th>지정 법원</th>
                    <td>서울서부지방법원</td>
                </tr>
                <tr>
                    <th>상태</th>
                    <td>승인</td>
                    <th>활동 가능 지역</th>
                    <td>서울, 인천, 경기</td>
                </tr>
                <tr>
                    <th>상세 주소</th>
                    <td>서울시 강남구 테헤란로 13길, 503호</td>
                    <th>첨부 파일</th>
                    <td>
                        <a href="">경력증명서.pdf</a>
                    </td>
                </tr>
                <tr>
                    <th>평정기준표</th>
                    <td>
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">평정기준표
                            조회</button>
                    </td>
                    <th>신청자 상태</th>
                    <td>적격</td>
                </tr>
            </tbody>
        </table>

        <!-- 모달 -->
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- 모달 내용 -->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">평정기준표</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered">
                            <tbody>
                                <th>가나다</th>
                                <td>하이요</td>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    </div>
                </div>

            </div>
        </div>

        <h4>평정기준표 코멘트</h4>
        <textarea class="form-control col-sm-5 rows-5">

        </textarea>
    </div>

	<%@ include file="include/footer.jsp" %>

</body>

</html>