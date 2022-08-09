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
        <form action="" method="post" id="modifyMyInfo">
            <h4>기본 정보</h4>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th>신청자 성명</th>
                        <td>${helper.name}</td>
                        <th>휴대전화번호</th>
                        <td><input type="tel" class="form-control" id="helperPhoneTel" value="${helper.phoneTel}"></td>
                    </tr>
                    <tr>
                        <th>감정인 구분</th>
                        <td></td>
                        <th>비밀번호</th>
                        <td><input type="password" class="form-control" id="memPw" placeholder="비밀번호 입력..."></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="email" class="form-control" value=""></td>
                        <th>비밀번호 확인</th>
                        <td><input type="password" class="form-control" id="memPwCheck" placeholder="비밀번호 확인..."></td>
                    </tr>
                </tbody>
            </table>

            <h4>사무소 정보</h4>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th>사무소명</th>
                        <td></td>
                        <th>사업자 등록번호</th>
                        <td></td>
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
                                <input type="tel" class="form-control" value="">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">주소 찾기</button>
                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>주소</td>
                        <td colspan="2"><input type="tel" class="form-control" value=""></td>
                    </tr>
                    <tr>
                        <td>상세주소</td>
                        <td colspan="2"><input type="tel" class="form-control" value=""></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="수정" class="btn btn-primary center-block btn-block" id="">
        </form>
    </div>
    
    <%@ include file="include/footer.jsp" %>
    
</body>

</html>