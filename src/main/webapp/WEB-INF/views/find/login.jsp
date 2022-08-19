<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <!-- 부트스트랩 3.1.1 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <style>
        .container {
            text-align: center;
        }
    </style>

<body>

    <%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="container">
        <c:if test="${login == null}">
            <div id="loginbox" style="margin-top:50px;"
                class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">로그인</div>
                    </div>

                    <div style="padding-top:30px" class="panel-body">

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form id="loginform" class="form-horizontal" role="form">

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="user_id" type="text" class="form-control" name="username" value=""
                                    placeholder="아이디 입력">
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="user_pw" type="password" class="form-control" name="password"
                                    placeholder="비밀번호 입력">
                            </div>



                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <input id="login-remember" type="checkbox" name="remember" value="1"> 자동 로그인
                                    </label>
                                </div>
                            </div>


                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <a id="login_btn" class="btn btn-success">로그인 </a>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <table class="table" style="table-layout:fixed;">
                                        <tr>
                                            <td><a href="<c:url value="/user_join" />">회원가입</a></td>
                                            <td><a href="<c:url value="/find/find_my_id" />">아이디 찾기</a></td>
                                            <td><a href="<c:url value="/find/find_my_password" />">비밀번호 찾기</a></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </c:if>
        <c:if test="${login != null}">
        	<h1>${login.memUserId} 로 현재 로그인 중입니다.</h1>
        	<!-- 메인 페이지로 보내는 링크 상대 링크로 변경 (c:url ...) -->
        	<a href="/trial/">메인 페이지로</a>
        </c:if>
    </div>

    <!-- 스크립트 시작 -->
    <script>
        // 제이쿼리 시작
        $(function () {
            $('#login_btn').click(function () {

                const id = $('#user_id').val();
                const pw = $('#user_pw').val();

                const member = {
                    'memUserId': id,
                    'memPw': pw
                };

                $.ajax({
                    type: 'POST',
                    url: '/trial/find/login',
                    contentType: 'application/json',
                    dataType: 'text',
                    data: JSON.stringify(member),
                    success: function (result) {
                        if (result === 'loginSuccess') {
                            console.log('로그인 성공!');
                            location.href = '/trial/';
                        } else if (result === 'idFail') {
                            alert('존재하지 않는 아이디입니다.');
                        } else if (result === 'pwFail') {
                            alert('비밀번호가 틀렸습니다.');
                        }

                    },
                    error: function () {
                        alert('통신 에러');
                    }
                });
            });
        });
    </script>
</body>

</html>