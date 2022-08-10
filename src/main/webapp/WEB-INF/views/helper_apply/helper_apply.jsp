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

        /*맨 마지막 신청 버튼*/
        .submit_btn{
            text-align: center;
        }


        /* 테이블의 로우스팬3인 주소 글자 중앙(세로의 중앙)위치*/
        .table>tbody>tr>td.add_rowspan{ 
        
            vertical-align: middle;
        }
    </style>
</head>
<body>

	<%@ include file="../include/header.jsp" %>

	
                <!--     text-center 적용하면 col크기의 중간에 텍스트 작성-->
      <div class="container-fluid">

        <div class="row">
            <div class="col-md-2"></div> <!--왼쪽 aside공간 -->

    

            <div class="col-md-8"><!-- 중앙 공간-->
           
                <h2>조력자 신청</h2>
                

                <form action="" method="post"> <!--서버로 전송-->


 
                    <br><br>
                    
                    <div>
                        <h3>감정분야 및 세부 구분 선택</h3>
                        <hr>
                        <span>감정 분야 선택</span>
                        <select name="mid_classify">
                                <option value="ame">중 분류</option> 
                                <option value="esp">일반감정인</option>  
                                <option value="cl">통번역인</option>
                                <option value="capp">기관추천조력자</option>
                        </select>
                        <select name="small_classify">
                            <option value="ame">소 분류</option> 
                            <option value="esp">측량</option>  
                            <option value="cl">문서</option>

                            <option value="capp">통역인</option>
                            <option value="capp">번역인</option>

                            <option value="capp">의사</option>
                            <option value="capp">회계사</option>
                        </select>
                        <hr>    
                    </div>
                    
                    <br>

                    <div>
                        <h3>희망 법원 선택</h3>
                        <hr>
                        <span>법원 목록</span>
                        <span>희망 법원</span>

                        <div>
                           
                                
                                <span> 희망 법원 선택</span>
                       
                            
                            
                            <select name="small_classify" multiple="multiple">
                                <option value="">대법원</option>
                                <option value="">서울고등법원</option>
                                <option value="">서울고등법원(춘천)</option>
                                <option value="">대구고등법원</option>
                                <option value="">부산고등법원</option>
                            </select>
                            
                            <span>　　　　　　　　　　　　　　　　　　　　</span>
                        

                            <select name="small_classify" multiple="multiple">
                                <option value="">대법원</option>
                                <option value="">서울고등법원</option>
                                <option value="">서울고등법원(춘천)</option>
                                <option value="">대구고등법원</option>
                                <option value="">부산고등법원</option>
                            </select>
                        </div>
                        <hr>

                    </div>

                    <br>



                    <div>
                        <h3>신청인 기본정보</h3>
                        <hr>
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td>감정인명</td>
                                    <td><input type="text" class="form-control"></td>
                                    <td>주민등록번호</td>
                                    <td><input type="text" name="" class="form-control"></td>
                                </tr>
                                
                                <tr>
                                    <td>휴대전화번호</td>
                                    <td><input type="text"class="form-control"></td>
                                    <td>전화번호</td>
                                    <td><input type="text" name=""class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>이메일</td>
                                    <td colspan="3"><input type="text"class="form-control"></td>
                                </tr>
                                <tr>
                                    <td rowspan="3" class="add_rowspan">주소</td>
                                    <td>우편주소</td>
                                    <td colspan="2" ><input type="text" name="" id="" class="form-control"><button> 주소찾기</button></td>
                                </tr>
                                <tr>
                                    <td>주소</td>
                                    <td colspan="2"><input type="text" name="" id=""class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>상세주소</td>
                                    <td  colspan="2"><input type="text" name="" id=""class="form-control"></td>
                                </tr>
                            </tbody>
                        </table>
                        <hr>
                    
                    </div>

                    <br>
                    
                    <div>
                        <h3>사무소 정보</h3>
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td>사무소명</td>
                                    <td><input type="text" class="form-control"></td>
                                    <td>사업자등록번호</td>
                                    <td><input type="text" name="" class="form-control"></td>
                                </tr>
                                
                                <tr>
                                    <td>사무소전화번호</td>
                                    <td><input type="text" class="form-control"></td>
                                    <td>사무소펙스번호</td>
                                    <td><input type="text" name="" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td rowspan="3" class="add_rowspan">주소</td>
                                    <td>우편주소</td>
                                    <td colspan="2"><input type="text" name="" id="" class="form-control"><button>주소찾기</button></td>
                                </tr>
                                <tr>
                                    <td>주소</td>
                                    <td colspan="2"><input type="text" name="" id="" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td>상세주소</td>
                                    <td  colspan="2"><input type="text" name="" id="" class="form-control"></td>
                                </tr>
                            </tbody>
                        </table>
                    
                    </div>
                    
                    <br>

                    <div>
                        <h3>추가 정보</h3>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>경력명</td>
                                    <td>경력 유무</td>
                                    <td>경력 내용</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>소송사건 당사자 경력</td>
                                    <td> 
                                        <label class="radio-inline">
                                            <input type="radio" name="sosong" > 예
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="sosong" > 아니오
                                        </label>
                                    </td>
                                    <td><textarea name="" id=""  rows="1" style="resize: none;"  class="form-control"></textarea></td>
                                </tr>
                                <tr>
                                    <td>보험업계 자문 경력</td>
                                    <td>
                                        <label class="radio-inline">
                                            <input type="radio" name="bohum" > 예
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="bohum" > 아니오
                                        </label>
                                    </td>
                                    <td><textarea name="" id="" rows="1" style="resize: none;"  class="form-control"></textarea></td>
                                </tr>
                                <tr>
                                    <td>형사처벌 받은 경력</td>
                                    <td >
                                        <label class="radio-inline">
                                            <input type="radio" name="hyungsa" > 예
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="hyungsa" > 아니오
                                        </label>
                                    </td>
                                    <td><textarea name="" id="" rows="1" style="resize: none;"  class="form-control"></textarea></td>
                                </tr>
                            </tbody>
                        </table>
                    
                    </div>

                    <br>

                    <div>
                        <h3>학력 사항</h3>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>학교명</td>
                                    <td>학과전공</td>
                                    <td>학위</td>
                                    <td>입학일</td>
                                    <td>졸업일</td>
                                    <td>증명 파일</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="file" name="" id=""></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="file" name="" id=""></td>
                                </tr>
                            </tbody>
                        </table>
                    
                    </div>
                         
            
                    <br>

                    <div>
                        <h3>근무 경력 사항</h3>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>회사명</td>
                                    <td>기간</td>
                                    <td>수행업무</td>
                                    <td>부서 직책</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <br>
                  
                    <div>
                        <h3>자격 및 면허사항</h3>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>자격/면허명</td>
                                    <td>발급기관</td>
                                    <td>자격번호</td>
                                    <td>발급일</td>
                                    <td>첨부파일</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="file" name="" id=""></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="file" name="" id=""></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <br>
                    <div>
                        <h3>은행 정보</h3>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>입금은행명</td>
                                    <td>예금주</td>
                                    <td>계좌번호</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                   


                <div class="submit_btn ">
                    <button class="btn btn-lg">신청</button>
                </div>
            
            
                </form> <!-- 서버로 전송 끝-->
            
            </div> <!-- 중앙 공간 끝-->



            <div class="col-md-2"></div> <!--오른쪽 aside 공간-->
        </div>  <!-- div class=row 끝-->


      </div>    <!-- div class=container-fluid 끝-->
    
    <%@ include file="../include/footer.jsp" %>
    
</body>
</html>