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
<!--���� ������ �߰�-->
<link
	href="${pageContext.request.contextPath }/resources/css/choiStyle.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>
	<%@ include file="../include/header.jsp"%>
	

	<!-- ����� ���� ���� ��ư (������ ��û �Ϸ� ��ư���� ó�� ����) -->
    <button type="button" class="btn btn-primary btn-lg" id="openModalBtn">������ ��û ��ư</button>

    <!-- ��� ���� -->
    <div id="modalBox" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog " role="document">
            <div class="modal-content">
                <div class="modal-header"> <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close"><span aria-hidden="true">��</span></button>
                    <h4 class="modal-title" id="myModalLabel">
                        <strong>(�̸�)</strong>�� ��û�� �Ϸ�Ǿ����ϴ�.
                    </h4>
                </div>
                <div class="modal-body">
                    <!--<fmt:formatDate value="#" pattern="yyyy-MM-dd HH:mm" />-->
                    2022-08-08 00�� 00�п� ��û�� �Ϸ�Ǿ����ϴ�.
                </div>
                <div class="modal-footer"> 
                    <button type="button" class="btn btn-primary" id="#">���� ȭ��</button> 
                    <button type="button" class="btn btn-default" id="#">����������</button> 
                </div>
            </div>
        </div>
    </div>

    <script>
        // ��� ��ư�� �̺�Ʈ�� �Ǵ�.  
        $('#openModalBtn').on('click', function () {
            $('#modalBox').modal('show');
        });
        // ��� ���� ��� ��ư�� �̺�Ʈ�� �Ǵ�.  
        $('#closeModalBtn').on('click', function () {
            $('#modalBox').modal('hide');
        });
    </script>

</body>
</html>




























