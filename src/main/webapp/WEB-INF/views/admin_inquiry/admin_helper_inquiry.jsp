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

    </style>
</head>
<body>

	<%@ include file="../include/header.jsp" %>

<div class="container-fluid">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <h2>조력자 신청관리 >>조력자 신청자 조회</h2>
         

                <form action="">

                    <div>
                        <div class="col-md-6"></div>
                        <div class="col-md-6 text-right">
                            
                            <select name="" id=""  style="width:148px; height:30px;">
                                <option value="">이름</option>
                                <option value="">공고</option>
                                <option value="">조력자 유형(중분류)</option>
                                <option value="">조력자 유형(소분류)</option>
                                <option value="">차수</option>
                                <option value="">신청자 상태</option>
                            </select>
                            <input type="text" >
                            <button class="btn" >검색</button>
                        </div>
                    </div>
                </form>
                    
       
                    
                
                <table class="table table-bordered">
                    <thead>
                     <tr>
                         <td>이름</td>
                         <td>공고</td>
                         <td>조력자 유형(중분류)</td>
                         <td>조력자 유형(소분류)</td>
                         <td>차수</td>
                         <td>공고 기간</td>
                         <td>신청자 상태</td>
                     </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>홍길동</td>
                            <td>제 2차 일반 감정인 공고</td>
                            <td>일반 감정인</td>
                            <td>측량</td>
                            <td>2차</td>
                            <td>2022.08.01~2022.09.01</td>
                            <td>접수</td>
                        </tr>

                        <tr>
                            <td>길동홍</td>
                            <td>제 2차 일반 감정인 공고</td>
                            <td>일반 감정인</td>
                            <td>공사비등</td>
                            <td>1차</td>
                            <td>2022.08.01~2022.09.01</td>
                            <td>1차 승인</td>
                        </tr>

                        <tr>
                            <td>김덕배</td>
                            <td>제 3차 통번역인 공고</td>
                            <td>통번역인</td>
                            <td>통역인</td>
                            <td>3차</td>
                            <td>2022.08.01~2022.09.01</td>
                            <td>1차 승인</td>
                        </tr>

                        <tr>
                            <td>손흥민</td>
                            <td>제 1차 기관추천조력자 공고</td>
                            <td>기관추천조력자</td>
                            <td>의사</td>
                            <td>1차</td>
                            <td>2022.08.01~2022.09.01</td>
                            <td>접수</td>
                        </tr>

                        <tr>
                            <td>케인</td>
                            <td>제 1차 기관추천조력자 공고</td>
                            <td>기관추천조력자</td>
                            <td>회계사</td>
                            <td>1차</td>
                            <td>2022.08.01~2022.09.01</td>
                            <td>승인</td>
                        </tr>
                    </tbody>
                </table>
                
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
    
    <%@ include file="../include/footer.jsp" %>
    
</body>
</html>