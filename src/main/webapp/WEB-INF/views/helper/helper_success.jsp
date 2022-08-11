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

        <div class="container-fluid helper-suc-wrap">
            <div class="helper-suc-title">
                <h1>
                    <strong>(이름)</strong>님 신청이 완료되었습니다.
                </h1>
            </div>
            <div class="helper-suc-subtitle">
                <span>
                    <!--<fmt:formatDate value="#" pattern="yyyy-MM-dd HH:mm" />-->
                    2022-08-08 00시 00분에 신청이 완료되었습니다.
                </span>
            </div>
            <div class="btn-wrap">
                <div class="btn-group btn-group-lg" role="group" aria-label="...">
                    <button type="button" class="btn btn-default btn-primary">메인&nbsp; 화면</button>
                    <button type="button" class="btn btn-default btn-info">마이페이지</button>
                  </div>
            </div>

        </div>
        
    </section>


</body>
</html>




































