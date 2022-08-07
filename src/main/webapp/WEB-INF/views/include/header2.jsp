<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>이거슨 우리의 헤더</title>

	<%-- 
		${pageContext.request.contextPath} == <c:url value='' />
	 --%>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
    <header>
        <div class="container-fluid">
            <div class="row login_sigiin">

                <div class="col-md-12">　</div>

                <div class="col-md-8"></div>
                <div class="col-md-4">
                    
                    <a>로그인</a>
                    <span>　</span>
                    <a>회원가입</a>
                </div>

                <div class="col-md-12">　</div>
            </div>
            
            <div class="row login_sigiin">
                <div class="col-md-7">　</div>
                <div class="col-md-1">　</div>
                <div class="col-md-4">
					<input type="text" placeholder="검색  내용">
                    <span>　</span>
                    <input type="button"value="검색"></div>    
                </div>           
            </div>

            <div class="row logoimg">
                <div class="col-md-1">　</div>
                <div class="col-md-3">
                    <h1>
                        <img src="${pageContext.request.contextPath }/resources/img/a.png" alt="">
                    </h1>
                </div>

                <div class="col-md-2 tt">
                   
                        <a>
                           <h4>조력자 신청</h4>
                        </a>
                   
                </div>
                <div class="col-md-2 tt">
                        <a>
                            <h4>조력자 공고</h4>
                        </a>
                 
                </div>
                <div class="col-md-2 tt">
                    <a>
                        <h4>고객 센터</h4>
                    </a>
                </div>
                <div class="col-md-2 tt">
                    <a>
                        <h4>마이 페이지</h4>
                    </a>
                </div>

            </div>
        </div>
    
    
    </header>