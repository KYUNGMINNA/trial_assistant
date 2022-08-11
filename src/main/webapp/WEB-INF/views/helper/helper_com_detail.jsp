<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script src="https://kit.fontawesome.com/89b715172c.js"
	crossorigin="anonymous">
    </script>

<%-- 
		${pageContext.request.contextPath} == <c:url value='' />
	 --%>
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!--개인 디자인 추가-->
<link
	href="${pageContext.request.contextPath }/resources/css/choiStyle.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>
	<%@ include file="../include/header.jsp"%>
	

	<section class="clearfix">

        <aside>
            메뉴 예시
        </aside>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-9 col-xs-9 board-table helper-detail-wrap">
                    <div class="titlebox">
                        <h3>조력자 신청 기관 상세 조회</h3>
                    </div>
                    <hr>

                    <!--테이블 form태그-->
                    <form action="#" method="post">
                        <div class="detail-wrap clearfix">
                            <table class="table container-fluid table-condensed helper-detail-table">
                                <!-- 반복문 필요 -->
                                <tr>
                                    <td class="info">
                                        	기관명
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="기관1" disabled>
                                    </td>
                                    <td class="info">
                                        	사업자 번호
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="0000-0000"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	지원 공고 이력
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#"
                                            value="제 2차 [경매]감정인 모집 공고" disabled>
                                    </td>
                                    <td class="info">
                                        	기관 전화번호
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="02-1234-1234"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	조력자 유형
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="경매" disabled>
                                    </td>
                                    <td class="info">
                                        	직업
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="부동산 컨설턴트"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	기관 팩스 번호
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="0000-0000"
                                            disabled>
                                    </td>
                                    <td class="info">
                                        	활동 가능 지역
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="서울" disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	기본주소
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="서울시 강남구"
                                            disabled>
                                    </td>
                                    <td class="info">
                                        	지정 법원
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="서울서부지방법원"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	상세주소
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="테헤란로 13길 503호"
                                            disabled>
                                    </td>
                                    <td class="info">
                                        	기관 증빙 서류
                                    </td>
                                    <td>
                                        <input class="form-control" type="file" name="#" id="formFile" disabled>
                                    </td>
                                </tr>
                            </table>
                            <div class="btn-group detail-btn-wrap" role="group" aria-label="...">
                                <button type="button" class="btn btn-secondary">삭제</button>
                                <button type="button" class="btn btn-primary">수정</button>
                                <button type="button" class="btn btn-default">목록</button>
                            </div>
                            <!--display none 처리 해놓음. 수정 버튼 눌렀을 때 수정 페이지에서 생길 버튼-->
                            <div class="btn-group detail-btn-wrap2" role="group" aria-label="...">
                                <button type="button" class="btn btn-secondary">삭제</button>
                                <button type="button" class="btn btn-primary">등록</button>
                            </div>
                        </div>

                    </form>
                    <br>
                    <hr>
                </div>
            </div>
        </div>
    </section>

</body>
</html>