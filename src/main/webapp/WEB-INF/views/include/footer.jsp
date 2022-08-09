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
     <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</head>
<body>
	 <!-- ----------- Footer ---------------------->
	<footer>
		<div class="container-fluid">
			
			<div class="row">
				<div class=" col-md-4 col-sm-6 col-xs-12">
          <ul class="system">
            <h4>안내 서비스</h4>
            <li>바롬시스템 | 대표 :</li>
            <li>서울특별시 강남구 테헤란로 000길</li>
            <li>전화번호 000-0000-0000</li>
            <li>팩스번호 02-0000-0000</li>
            <li>E-MAIL info@co.kr</li>
           
            
        
        </div>
        
        <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="menu">
                 <span>Menu</span>    
                 <li>
                    <a href="#">홈</a>
                  </li>
                       
                  <li>
                     <a href="#">조력자 등재 공고</a>
                  </li>
                       
                  <li>
                    <a href="#">조력자 신청</a>
                  </li>
                       
                  <li>
                     <a href="#">고객 센터</a>
                  </li>

                  <li>
                     <a href="#">마이 페이지</a>
                  </li>
             </ul>
        </div>
   
        <div class="col-md-4 col-sm-6 col-xs-12">
          <ul class="address">
            <span>Contact</span>       
            <li>
               <i class="fa fa-phone" aria-hidden="true"></i> 
               <a href="#">Phone</a>
            </li>
            <li>
               <i class="fa fa-map-marker" aria-hidden="true"></i> 
               <a href="#">Adress</a>
            </li> 
            <li>
               <i class="fa fa-envelope" aria-hidden="true"></i> 
               <a href="#">Email</a>
            </li> 
           </ul>
        </div>
        
        
   
        <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
          
					<ul class="list-unstyled list-inline social text-center">
						<li class="list-inline-item"><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="https://twitter.com/?lang=ko"><i class="fa fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
						<li class="list-inline-item"><a href="https://www.google.co.kr/"><i class="fa fa-google-plus"></i></a></li>
						<li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				
			</div>	
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
					<p><u><a href="#">관련 홈페이지 링크</a></u> </p>
					<p class="h6">© All right Reversed.<a class="text-green ml-2" href="" target="_blank">Sunlimetech</a></p>
				</div>
				<hr>
			</div>	
		</div>
	</footer> 
	<!------------ Footer ------------->


</body>

</html>