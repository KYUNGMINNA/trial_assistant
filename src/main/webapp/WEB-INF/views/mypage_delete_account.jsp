<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
    <div class="container">
        <form action="" method="post" id="modifyMyInfo">
            <h3>회원가입 탈퇴</h3>
            <table class="table table-bordered">
                    
                <th>재사용 및 복구 불가 안내</th> <br>
                    <th>개인정보 수집·이용 목적
                    e프라이버시 클린서비스 이용을 위한 본인 확인
                    
                    본인 확인 내역 통합 조회
                    
                    웹사이트 회원 탈퇴 처리 지원
                    
                    개인정보 열람, 정정/삭제, 처리정지 지원</th>
                
            </table>
                    
                </tbody>



                <table class="table table-bordered">
                    <th> 개인 정보 및 서비스 이용 기록 삭제 안내 <br></th>
                    <th>휴대폰 본인확인 : 이름, 내국인여부, 생년월일, 성별, 휴대폰번호, 통신사

                        아이핀 본인확인 : 이름, 아이핀 ID, 비밀번호
                        
                        공동인증서 본인확인 : 이름, 공동인증서 비밀번호
                        
                        신용카드 본인확인 : 이름, 생년월일, 휴대폰번호, 카드번호
                        
                        디지털원패스 본인확인 : 이름, 생년월일, 휴대폰번호, 이메일, 성별, 개인식별번호, 내 외국인 유무
                        
                        실명 확인 : 이름, 주민등록번호</th>

                </table>
                <p>
                 </p>

                  <button type="button" class="btn btn-primary btn-lg btn-block">확인</button>
<button type="button" class="btn btn-default btn-lg btn-block">취소</button>
</p>    
</form>
    </div>
     <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>

