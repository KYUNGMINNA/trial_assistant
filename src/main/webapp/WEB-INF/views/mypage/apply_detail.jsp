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

<body>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="container">
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
                        <h4 class="modal-title" style="text-align: center;">평정기준표</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th rowspan="2">평정항목</th>
                                    <th rowspan="2">세부항목</th>
                                    <th rowspan="2">배점</th>
                                    <th colspan="3">내용</th>
                                </tr>
                                <tr>
                                    <th>구분</th>
                                    <th>기준</th>
                                    <th>배점</th>
                                </tr>
                                <tr>
                                    <td rowspan="9">기본평정</td>
                                    <td rowspan="6">경력점수</td>
                                    <td rowspan="6"></td>
                                    <td rowspan="3">통산경력</td>
                                    <td>○10년 이상</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>●5~10 년</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>○5년 미만</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td rowspan="3">관내경력</td>
                                    <td>○10년 이상</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>○5~10 년</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>●5년 미만</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td rowspan="2">사무소 소재지</td>
                                    <td rowspan="2"></td>
                                    <td colspan="2">□관내사무소</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2">■관외사무소</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <!-- 나중에 여기 사무소 주소지 동적으로 뿌려야 함 -->
                                    <td colspan="5">신청인 사무소주소지 : </td>
                                </tr>
                                <tr>
                                    <td rowspan="3">인성평가</td>
                                    <td rowspan="3"></td>
                                    <td rowspan="3"></td>
                                    <td colspan="2">○우수</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2">○평균</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2">○미흡</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td rowspan="2">면접</td>
                                    <td rowspan="2"></td>
                                    <td rowspan="2"></td>
                                    <td colspan="2">○우수</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2">○미흡</td>
                                    <td></td>
                                </tr>
                                <!-- 자격증 점수 (최대 4개) -->
                                <tr>
                                    <td rowspan="4">자격증점수</td>
                                    <td rowspan="4"></td>
                                    <td rowspan="4"></td>
                                    <td colspan="2"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td></td>
                                </tr>
                                <!-- 합계 -->
                                <tr>
                                    <td colspan="2">합계</td>
                                    <td></td>
                                    <td colspan="3"></td>
                                </tr>
                                <tr>
                                    <td colspan="2">감정인 평정표</td>
                                    <td></td>
                                    <td colspan="3"></td>
                                </tr>
                                <tr>
                                    <td>조정평점</td>
                                    <td>심사위원 추천</td>
                                    <td></td>
                                    <td colspan="3">최대 7점</td>
                                </tr>
                                <!-- 최종점수 동적으로 얻어와 뿌리기 -->
                                <tr>
                                    <td colspan="2">최종점수 (종합)</td>
                                    <td></td>
                                    <td colspan="3">--점 / 총점</td>
                                </tr>
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
        <textarea class="form-control col-sm-5" rows-5>

        </textarea>
    </div>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>

</html>