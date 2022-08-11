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
            text-align: left;
            font-size: 15px;
        }
        textarea{
            resize: none;
   
            border: 1px solid #ccc;
        }

   
    </style>
</head>
<body>

	<%@ include file="../include/header.jsp" %>

	 <section>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">

           <form action="">
        
                <table class="table table-condensed">
                 
                        <tr>
                            <td>제목</td>
                            <td> <input type="text" class="form-control" id="exampleInputEmail1" placeholder="공고 제목"></td>
                        </tr>

                        <tr>
                            <td >총 차수</td>
                            <td> <input type="text" class="form-control" id="exampleInputEmail1" placeholder="차수"></td>
                        </tr>

                        <tr>
                            <td >조력자 유형</td>
                            <td> <input type="text" class="form-control" id="exampleInputEmail1" placeholder="유형"></td>
                        </tr>
                        <tr>
                            <td>모집 기간</td>
                            <td> <input type="text" class="form-control" id="exampleInputEmail1" placeholder="모집 기간"></td>
                        </tr>
                        <tr>
                            <td>진행 여부</td>
                            <td> <input type="text" class="form-control" id="exampleInputEmail1" placeholder="진행 여부"></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td> <textarea name="" id="" cols="75" rows="3" placeholder="내용 입력"></textarea></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                </table>
                <div class="text-right">
                    <button><a href="조력자공고.html">등록</a></button>
                    <button><a href="조력자공고.html">목록</a></button>
                </div>
           </form>
        


            
          
          
        </div>
        </div>
        </div>
        </section>
    <%@ include file="../include/footer.jsp" %>
    
</body>
</html>