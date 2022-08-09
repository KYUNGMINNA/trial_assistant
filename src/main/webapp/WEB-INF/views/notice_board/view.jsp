<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>view</title>
    
    

	<%-- 
		${pageContext.request.contextPath} == <c:url value='' />
	 --%>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    
    <link href="${pageContext.request.contextPath }/resources/css1/style1.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
	<section>



    </section>




   <aside>


        사이드바 


    </aside>

    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <ul class="breadcrumb">
                <li><a href="#">홈</a></li>
                <li><a href="#">고객센터</a></li>
                <li class="active">공지사항</li>
              </ul>
          
        </div>

        
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    글 제목이 들어갑니다.

                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>1</dd>
                    </dl>
                    <dl>
                        <dt>작성자</dt>
                        <dd>admin</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2021.1.16</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>12</dd>
                    </dl>
                </div>
                <div class="cont">
                    글 내용이 들어갑니다 
                    글 내용이 들어갑니다 
                    글 내용이 들어갑니다
                    글 내용이 들어갑니다 
                    글 내용이 들어갑니다
                    글 내용이 들어갑니다 
                </div>

            </div>
            <div class="bt_wrap">

                <a href="#" class="btn btn-primary">목록</a>
                <a href="#" class="btn btn-primary">수정</a>
            </div>
         </div>   
    </div>

</body>

</html>