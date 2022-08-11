<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 접수 내역 조회</title>

    <!-- 부트스트랩 3.1.1 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

   
   <style>
  

        aside{            
            width: 20%;
            height: 500px;
            background-color: gray;
            position: relative;
            display: inline-block;
          
        }
        section{
            width: 80%;
            height: 500px;
            position: relative;
            left: 20%;
            display: inline-block;
        }
        section .container-fluid{
            position: relative;
        
      
        }
        section .container-fluid table{
            text-align: center;
        }
   

        .clearfix::after{
            clear: both;
        }
        .text-left button{
            float: right;
        }
    </style>
</head>
<body>

	<%@ include file="../include/header.jsp" %>



        <div class="container-fluid">
            <div class="row">
            	<div class="col-md-2"></div>
                <div class="col-md-8">

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <td>제목</td>
                                <td colspan="4">제 2차 [경매]감정인 모집 공고</td>
                          
                                
                             
                        </tr>
                    </thead>
                    <tbody>
                        
                        <tr>
                            <td>모집기간</td>
                            <td colspan="4">2022.08.04~2022.09.30</td>
                        </tr>
                        
                        <tr>
            
                            <td>모집 대상</td>
                            <td colspan="4">문서</td>
                        </tr>
                        
                        <tr>
                            <td colspan="5">내용</td>
                        </tr>
                        <tr>
                            <td colspan="5">2022년 [문서]감정인 공고 모집을 진행하오니 기간에 맞춰 지원 부탁 드립니다</td>
                        </tr>
                    </tbody>
                    
                </table>
                <div class="text-left">
                        <ul class="clearfix">
                            <button class="text-right"><a href="조력자공고.html">목록</a></button>
                            <button class="text-right"><a href="조력자공고.html">수정</a></button>
                            <li>이전 글 : <a href="">제 1차 [측량]감정인 모집 공고</a></li>
                            <li>다음 글 : <a href="">제 3차 [경매]감정인 모집 공고</a></li>
                        </ul>           
                  </div>

                </div>
                <div class="col-md-2"></div>

            </div>
        
        

  
   
          
          
          
        </div>

    
    <%@ include file="../include/footer.jsp" %>
    
</body>
</html>