<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	

	<!-- 모달을 열기 위한 버튼 (조력자 신청 완료 버튼으로 처리 예정) -->
    <button type="button" class="btn btn-primary btn-lg" id="openModalBtn">조력자 신청 버튼</button>

    <!-- 모달 영역 -->
    <div id="modalBox" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog " role="document">
            <div class="modal-content">
                <div class="modal-header"> <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <strong>(이름)</strong>님 신청이 완료되었습니다.
                    </h4>
                </div>
                <div class="modal-body">
                    <!--<fmt:formatDate value="#" pattern="yyyy-MM-dd HH:mm" />-->
                    2022-08-08 00시 00분에 신청이 완료되었습니다.
                </div>
                <div class="modal-footer"> 
                    <button type="button" class="btn btn-primary" id="#">메인 화면</button> 
                    <button type="button" class="btn btn-default" id="#">마이페이지</button> 
                </div>
            </div>
        </div>
    </div>

    <script>
        // 모달 버튼에 이벤트를 건다.  
        $('#openModalBtn').on('click', function () {
            $('#modalBox').modal('show');
        });
        // 모달 안의 취소 버튼에 이벤트를 건다.  
        $('#closeModalBtn').on('click', function () {
            $('#modalBox').modal('hide');
        });
    </script>
    
    <%@ include file="../include/footer.jsp"%>
    

</body>
</html>




























