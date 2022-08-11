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
  
        header{
            height: 30%;
        }
        aside{            
           

            background-color: gray;
            position: relative;
           
          
        }
        section{
            width: 80%;
            height: 500px;
            position: relative;
            left: 20%;
        }
        section .container-fluid{
            position: relative;
            /* top: 300px;
       */
        }
        section .container-fluid table{
            text-align: center;
        }
   
    </style>
</head>
<body>

	<%@ include file="../include/header.jsp" %>

	<section>

        <div class="container-fluid">


            <div class="row">
                <div class="col-md-8">




            <div class="text-right">
                
                <form action="">
                    <input type="text" name="" id="" placeholder="검색할 내용 입력">
                    <button>검색</button>
                </form>
            </div>



                    
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <td>제목</td>
                        <td>총 차수</td>
                        <td>조력자 유형</td>
                        <td>모집 기간</td>
                    <td>진행 여부</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a>제 2차[일반] 감정인 모집 공고</a></td>
                    <td>4차</td>
                    <td>경매</td>
                    <td>2022.08.04~2022.09.30</td>
                    <td>완료</td>
                </tr>
                <tr>
                    <td><a href="">제 3차[일반] 감정인 모집 공고</a></td>
                    <td>3차</td>
                    <td>문서</td>
                    <td>2022.08.04~2022.09.30</td>
                    <td>모집 중</td>
                </tr>
                <tr>
                    <td><a href="">제 2차[일반] 감정인 모집 공고</a></td>
                    <td>4차</td>
                    <td>측량</td>
                    <td>2022.08.04~2022.09.30</td>
                    <td>모집 예정</td>
                </tr>
            </tbody>
         
        </table>
        
    


        <div class="text-right">
            <button><a href="조력자공고등록.html">공고 등록</a></button>
        </div>

        <div class="text-center">
            <ul class="pagination pagination-lg">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                    <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
            </li>
          </ul>
          </div>
          
          
          
          
        </div>

        </div>
        </div>
        </section>
    
    <%@ include file="../include/footer.jsp" %>
    
</body>
</html>