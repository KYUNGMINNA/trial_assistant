<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나의 정보수정</title>
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">

	<style>
    .teble{
        text-align: center;
        margin: 10px;
        vertical-align: middle;
    }
    .teble > tr { 
        text-align: center;
    }
</style>
</head>
<body>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

     <div class="container">
        <form action="" method="post" id="modifyMyInfo">
            <h4>안전한 이용을 위해, 비밀번호를 확인해 주세요.</h4>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <th>아이디 fed****4545</th>

                        <td>비밀번호<input type="tel" class="form-control" id="helperPhoneTel" value="비밀번호를 입력하세요"></td>
                        
                    </tr>
                </tbody>
            </table>

            <input type="submit" value="확인" class="btn btn-primary center-block btn-block" id="">
        </form>
     </div> 
     
     <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>