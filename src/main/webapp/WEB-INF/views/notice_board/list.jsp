<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>header</title>
    
    

	<%-- 
		${pageContext.request.contextPath} == <c:url value='' />
	 --%>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
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
            <p>공지사항 설명</p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">

                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">작성자</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>

                <div>
                <div class="num">5</div>
                <div class="title"><a href="#">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">4</div>
                <div class="title"><a href="#">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">3</div>
                <div class="title"><a href="#">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">2</div>
                <div class="title"><a href="#">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">1</div>
                <div class="title"><a href="#">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>
        </div>

            <div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
            
            <div class="bt_wrap">

                <a href="#" class="on">등록</a>
                <!-- <a href="#">수정</a> -->

            </div>

            </div>
     
    </div>

</body>

</html>