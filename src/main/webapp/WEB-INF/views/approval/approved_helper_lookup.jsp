<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 정보 수정</title>

    <!-- 부트스트랩 3.1.1 가져오기 -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
   
   <style>
    tr{
        text-align: center;
    }
    nav{
        text-align: center;
    }
</style>

</head>

<body>

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

    <div class="container">
        <div class="dropdown col-md-12">
            <h2 class="col-md-6"> 조력자 신청관리 >> 조력자 현황 조회</h2>
            
            <select class="btn btn-default dropdown-toggle col-md-2" type="button" id="dropdownMenu1" style="margin-top: 20px;" data-toggle="dropdown" aria-expanded="true">

                <option value="1">조력자 신청자</option>
                <option value="1">승인 등록자</option>
                <option value="1">삭제 대상인자</option>
                <option value="1">보완 요청자</option>
                <option value="1">부적격자</option>
           
            
           
              <span class="caret"></span>
            </select>
            <div class="input-group col-md-4" style="margin-top: 20px">
                <input type="text" class="form-control" id="" placeholder="조력신청자 검색.">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="button">검색</button>
                </span>
            </div>
            </div>
        <hr> <br>
        <table class="table table-hover">
            <tr class="active"> 
                <th>이름</th>
                <th>지원공고</th>
                <th>조력자</th>
                <th>마감 기간</th>
                <th>상태</th>
            </tr>
            <tr>
                <th>김보안</th>
                <th>제3차[일반]감정인 모집 공고</th>
                <th>통역인</th>
                <th>2022.08.04~2022.09.30</th>
                <th>신청</th>
            </tr>
            <tr>
                <th>김영식</th>
                <th>제2차[일반]감정인 모집 공고</th>
                <th>대변인</th>
                <th>2022.08.04~2022.09.30</th>
                <th>신청</th>
            </tr>
            <tr>
                <th>홍길동</th>
                <th>제3차[일반]감정인 모집 공고</th>
                <th>측량</th>
                <th>2022.08.04~2022.09.30</th>
                <th>신청</th>
            </tr>
            <tr>
                <th>김철수</th>
                <th>제1차[통번역인]감정인 모집 공고</th>
                <th>통역인</th>
                <th>2022.08.04~2022.09.30</th>
                <th>신청</th>
            </tr>
          </table>

          <nav>
            <ul class="pagination">
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
          </nav>

    </div>
    
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>
</html>  