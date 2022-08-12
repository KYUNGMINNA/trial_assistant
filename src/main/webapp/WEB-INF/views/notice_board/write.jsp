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

    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css1/style1.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

    <script
src="https://code.jquery.com/jquery-3.6.0.min.js" 
integrity ="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
crossorigin = "anonymous"></script>


</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
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
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>작성자</dt>
                        <dd><input type="text" placeholder="작성자 입력"></dd>
                    </dl>
                    <dl>
                        <dt>파일</dt>
                        <dd>
                            <form name="form_file" action="" method="post" enctype="multipart/form-data">
                                <input type="file" class="gallery-file" multiple />
                            </form>
                        </dd>

                    </dl>
                </div>
                <div class="cont">

                    <textarea placeholder="내용 입력"></textarea>
                </div>

            </div>

            <div class="bt_wrap">

                <button type="button" class="butt3 btn btn-info btn-md" data-toggle="modal" href="#myModal5"> 등록 완료
                </button>

                <button type="button" class="butt4 btn btn-info btn-md"> 취소</button>


            </div>

        </div>

    </div>
    <!-- Modal -->
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
                <%--  <a data-toggle="modal" href="#myModal6" class="btn btn-primary">확인</a>--%> 
              </div>
            </div>
          </div>
      </div>


        <%--  <div class="modal" id="myModal6" data-backdrop="static">
        <div class="modal-dialog ">
            <div class="modal-content">
              <div class="modal-header">
                
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              </div><div class="container"></div>
              <div class="modal-body">
                  <p> 등록이 완료되었습니다.</p>
              </div>
              <div class="modal-footer">
            
                <a data-toggle="modal" href="#myModal6" class="btn btn-primary">저장</a>                   
              </div>
            </div>
          </div>
      </div>
     주석 처리된 부분 추후에 수정 넘어가지 않음   --%>
      <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>

</html>

 <script src="${pageContext.request.contextPath }/resources/js1/Popup.js"></script> 