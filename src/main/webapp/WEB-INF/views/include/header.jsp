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
    <script src="https://kit.fontawesome.com/89b715172c.js" crossorigin="anonymous">
    </script>

	<%-- 
		${pageContext.request.contextPath} == <c:url value='' />
	 --%>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
	 <!------ Header ---------->

    <header>
        

        <div id="top">
            <div class="clearfix">
            <div class="container">
                <div class="search-box">
                    <form action="." method="post">
                      <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요">
                      <a href="#" class="search-btn" type="submit"> 
                        <i class="fas fa-search"></i>
                        </a>
                    </form>
                  </div>
                
                <div class="pull-right">
                    <p class="social clearfix" style="margin-top: 7px;">
                        <a href="#"><i class="fa-solid fa-user-plus">회원가입</i></a>
                        <a href="#"><i class="fa-solid fa-user"></i>로그인</a>
                        <a href="#"><i class="fa-solid fa-house-chimney"></i>홈</a>
                        <a href="#"><i class="fa fa-envelope"></i>메시지</a>
                    </p>
                </div>
               
            </div>
        </div>
        </div>
    
         <div class="navbar-affixed-top" data-spy="affix" data-offset-top="100">
             <nav class="navbar navbar-default">
                  <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                         </button>
                      <img src="resources/img/image2.png" width="300px" alt="Company Logo">
                    </div>
                      <div class="collapse navbar-collapse" id="myNavbar" algin="center">
                        <ul class="nav navbar-nav">
                          <li class="Home"><a href="#">조력자 등재 공고</a></li>
                          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">조력자 신청</a>
                           
                          </li>
                          <li><a href="#">고객 센터</a></li>
                          <li><a href="#">마이페이지</a></li>
                        </ul>
                      </div>
                  </div>
             </nav>

             
        </div>



    </header>



</body>

</html>