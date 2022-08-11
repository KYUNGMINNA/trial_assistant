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
	

	<section class="clearfix">

        <aside>
            �޴� ����
        </aside>

        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-9 col-xs-9 board-table helper-detail-wrap">
                    <div class="titlebox">
                        <h3>������ ��û ��� �� ��ȸ</h3>
                    </div>
                    <hr>

                    <!--���̺� form�±�-->
                    <form action="#" method="post">
                        <div class="detail-wrap clearfix">
                            <table class="table container-fluid table-condensed helper-detail-table">
                                <!-- �ݺ��� �ʿ� -->
                                <tr>
                                    <td class="info">
                                        	�����
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="���1" disabled>
                                    </td>
                                    <td class="info">
                                        	����� ��ȣ
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="0000-0000"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	���� ���� �̷�
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#"
                                            value="�� 2�� [���]������ ���� ����" disabled>
                                    </td>
                                    <td class="info">
                                        	��� ��ȭ��ȣ
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="02-1234-1234"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	������ ����
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="���" disabled>
                                    </td>
                                    <td class="info">
                                        	����
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="�ε��� ������Ʈ"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	��� �ѽ� ��ȣ
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="0000-0000"
                                            disabled>
                                    </td>
                                    <td class="info">
                                        	Ȱ�� ���� ����
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="����" disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	�⺻�ּ�
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="����� ������"
                                            disabled>
                                    </td>
                                    <td class="info">
                                        	���� ����
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="���Ｍ���������"
                                            disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="info">
                                        	���ּ�
                                    </td>
                                    <td>
                                        <input class="form-control" type="text" name="#" class="#" value="������� 13�� 503ȣ"
                                            disabled>
                                    </td>
                                    <td class="info">
                                        	��� ���� ����
                                    </td>
                                    <td>
                                        <input class="form-control" type="file" name="#" id="formFile" disabled>
                                    </td>
                                </tr>
                            </table>
                            <div class="btn-group detail-btn-wrap" role="group" aria-label="...">
                                <button type="button" class="btn btn-secondary">����</button>
                                <button type="button" class="btn btn-primary">����</button>
                                <button type="button" class="btn btn-default">���</button>
                            </div>
                            <!--display none ó�� �س���. ���� ��ư ������ �� ���� ���������� ���� ��ư-->
                            <div class="btn-group detail-btn-wrap2" role="group" aria-label="...">
                                <button type="button" class="btn btn-secondary">����</button>
                                <button type="button" class="btn btn-primary">���</button>
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