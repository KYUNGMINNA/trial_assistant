<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>list</title>
    
    

	<%-- 
		${pageContext.request.contextPath} == <c:url value='' />
	 --%>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <script
src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity ="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
crossorigin = "anonymous"></script>
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
            <ul class="breadcrumb">
                <li><a href="#">홈</a></li>
                <li><a href="#">고객센터</a></li>
                <li class="active">공지사항</li>
              </ul>
              
           <div class="container">
              <div class="row">    
                <div class="col-xs-4 col-xs-offset-3">
                    <div class="input-group">
                        <div class="input-group-btn search-panel">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                <span id="search_concept">목록</span> <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                              <li><a href="#">일반</a></li>
                              <li><a href="#">기관</a></li>
                        </div>
                        <input type="hidden" name="search_param" value="all" id="search_param">         
                        <input type="text" class="form-control" name="x" placeholder="Search term...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                        </span>
                    </div>
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
                <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">4</div>
                <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">3</div>
                <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">2</div>
                <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
                <div class="writer">admin</div>
                <div class="date">2022.08.08</div>
                <div class="count">12</div>
            </div>

            <div>
                <div class="num">1</div>
                <div class="title"><a href="view.html">글 제목이 들어갑니다.</a></div>
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

                <button type="button" class= " btn btn-info btn-md "
                data-toggle="modal" href="#myModal5"> 등록 </button>
                
               

            </div>

            <div class="modal" id="myModal5">
                <div class="modal-dialog modal-sm ">
                    <div class="modal-content">
                      <div class="modal-header">
                       
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                      </div><div class="container"></div>
                      <div class="modal-body">
                        <p>
                           정말로 등록하시겠습니까 ?
                        </p>
                        
                      </div>
                      <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn btn-default">닫기</a>
                        <a href="#" data-dismiss="modal" class="btn btn-default">확인</a>
                        <%-- <a data-toggle="modal" href="#myModal6" class="btn btn-primary">확인</a> --%>
                      </div>
                    </div>
                  </div>
              </div>
              
            
              <%--   <div class="modal" id="myModal6" data-backdrop="static">
                <div class="modal-dialog ">
                    <div class="modal-content">
                      <div class="modal-header">
                        
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                      </div><div class="container"></div>
                      <div class="modal-body">
                          <p> 등록이 완료되었습니다.</p>
                      </div>
                      <div class="modal-footer">
                       <a href="#" data-dismiss="modal" class="btn btn-default">저장</a>
						<a data-toggle="modal" href="#myModal6" class="btn btn-primary">저장</a>                   
                      </div>
                    </div>
                  </div>
              </div>
 주석 처리된 부분 추후에 수정 넘어가지 않음  --%>
</body>
</html>


 <script src="${pageContext.request.contextPath }/resources/js1/Popup.js"></script>
