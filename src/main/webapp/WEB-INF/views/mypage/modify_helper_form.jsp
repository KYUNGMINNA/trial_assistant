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
    <div class="container">
        <form action="">
            <h1>조력자 신청서 수정</h1>
            <h4>선택된 공고 정보</h4>
            <table class="table table-bordered col-md-8">
                <tr>
                    <th class="col-md-2">지원대상 공고</th>
                    <td class="col-md-6"><input type="text" class="form-control" id="" placeholder="" disabled></td>
                </tr>
            </table>
            <h4>감정분야 및 세부구분선택</h4>
            <table class="table table-bordered col-md-8">
                <tr>
                    <th class="col-md-2">감정분야 선택</th>
                    <td class="col-md-6">
                        <div class="row">
                            <div class="col-xs-5">
                                <select name="" id="" class="form-control">
                                    <option>일반감정인</option>
                                    <option>통번역인</option>
                                    <option>기관추천조력자</option>
                                </select>
                            </div>
                            <div class="col-xs-5">
                                <!-- 상위 옵션 선택에 따른 하위 동적 변환 필요 -->
                                <select name="" id="" class="form-control"></select>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            <h4>희망법원 선택</h4>
            <table class="table table-bordered col-md-8">
                <tr>
                    <th class="col-md-2">희망법원 선택</th>
                    <td class="col-md-6">
                        <select name="" id="" class="form-control">
                            <option>서울중앙대법원</option>
                            <option>서울고등법원</option>
                            <option>부산고등법원</option>
                        </select>
                    </td>
                </tr>
            </table>
            <h4>기본 정보</h4>
            <table class="table table-bordered col-md-12">
                <tbody>
                    <tr>
                        <th class="col-md-2">신청자 성명</th>
                        <td class="col-md-4"><input type="text" class="form-control" id="" value=""></td>
                        <th class="col-md-2">휴대전화번호</th>
                        <td><input type="tel" class="form-control" id="helperPhoneTel" value=""></td>
                    </tr>
                    <tr>
                        <th>주민등록번호</th>
                        <td><input type="text" class="form-control" id="" value=""></td>
                        <th>전화번호</th>
                        <td><input type="tel" class="form-control" id="" value=""></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="email" class="form-control" value=""></td>
                        <th>활동가능지역</th>
                        <td>
                            <div class="row">
                                <div class="col-xs-6">
                                    <select name="" id="" class="form-control">
                                        <option>서울</option>
                                        <option>경기</option>
                                        <option>인천</option>
                                    </select>
                                </div>
                                <div class="col-xs-6">
                                    <!-- 상위 옵션 선택에 따른 하위 동적 변환 필요 -->
                                    <select name="" id="" class="form-control"></select>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th rowspan="3">주소</th>
                        <td>우편번호</td>
                        <td colspan="2">
                            <div class="input-group">
                                <input type="tel" class="form-control" value="">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">주소 찾기</button>
                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>주소</td>
                        <td colspan="2"><input type="address" class="form-control" value=""></td>
                    </tr>
                    <tr>
                        <td>상세주소</td>
                        <td colspan="2"><input type="address2" class="form-control" value=""></td>
                    </tr>
                </tbody>
            </table>

            <h4>사무소 정보</h4>
            <table class="table table-bordered col-md-12">
                <tbody>
                    <tr>
                        <th class="col-md-2">사무소명</th>
                        <td class="col-md-4"><input type="text" class="form-control" id="" value=""></td>
                        <th class="col-md-2">사업자 등록번호</th>
                        <td><input type="text" class="form-control" id="" value=""></td>
                    </tr>
                    <tr>
                        <th>사무소 전화번호</th>
                        <td><input type="tel" class="form-control" value=""></td>
                        <th>사무소 팩스번호</th>
                        <td><input type="tel" class="form-control" value=""></td>
                    </tr>
                    <tr>
                        <th rowspan="3">사무소 주소</th>
                        <td>우편번호</td>
                        <td colspan="2">
                            <div class="input-group">
                                <input type="text" class="form-control" value="">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">주소 찾기</button>
                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>주소</td>
                        <td colspan="2"><input type="address" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>상세주소</td>
                        <td colspan="2"><input type="address" class="form-control"></td>
                    </tr>
                </tbody>
            </table>
            <h4>은행 정보</h4>
            <table class="table table-bordered col-md-8">
                <tr>
                    <th class="col-md-1">입금은행명</th>
                    <td class="col-md-2">
                        <input type="text" class="form-control" value="">
                    </td>
                    <th class="col-md-1">예금주</th>
                    <td class="col-md-1">
                        <input type="text" class="form-control" value="">
                    </td>
                    <th>계좌번호</th>
                    <td>
                        <input type="text" class="form-control" value="">
                    </td>
                </tr>
            </table>

            <h4>추가 정보 기재</h4>
            <table class="table table-bordered">
                <tr>
                    <td>
                        <!-- DB 글자수 제한 있어서, 여기에 나중에 js로 표시해주면 좋을듯 500/500 이렇게.-->
                        <div class="form-group">
                            <label for="comment">활동 경력 서술</label>
                            <textarea class="form-control" rows="5" id="comment"></textarea>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-group">
                            <label for="comment">소송/보험 경력 및 형사처벌 여부 서술</label>
                            <textarea class="form-control" rows="5" id="comment"></textarea>
                        </div>
                    </td>
                </tr>
            </table>

            <h4>파일 첨부</h4>
            <div class="form-group">
                <label for="exampleInputFile">경력 증빙용 파일 첨부</label>
                <input type="file" class="btn btn-default" id="exampleInputFile">
                <p class="help-block">허위 사실 기재시, 조력자 선발시에 불이익이 있을 수 있습니다.</p>
            </div>

            <input type="submit" value="수정" class="btn btn-primary center-block btn-block" id="">
        </form>
    </div>
</body>

</html>