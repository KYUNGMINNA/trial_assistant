<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CA1520 조력자 정보 입력</title>
    <script src="https://kit.fontawesome.com/89b715172c.js" crossorigin="anonymous">
    </script>

    <link href="./css/bootstrap.css" rel="stylesheet">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--개인 디자인 추가-->
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <link href="./ca1520.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js">

    </script>
</head>

<body>

    <aside>
        aside 20%
    </aside>

    <section>
        <h3>
            조력자 정보 입력
        </h3>
        <div id="column">
            <div id="left1">
                <div> 이름 <input type="text" placeholder="이름을 입력하세요."></div><br>
                <div> 휴대전화번호 <input type="text" placeholder="휴대전화번호를 입력하세요."></div><br>
                <div> 이메일 <input type="text" placeholder="이메일을 입력하세요."></div><br>
                <div> 기본주소 <input type="text" placeholder="기본주소를 입력하세요."></div><br>
                <div> 지정볍원 <input type="text" placeholder="지정법원을 입력하세요."></div><br>
            </div>

            <div id="right1">
                <div> 주민등록번호 <input type="text" placeholder="주민등록번호를 입력하세요."></div><br>
                <div> 전화번호 <input type="text" placeholder="전화번호를 입력하세요."></div><br><br>
                <select class="" name="#">
                    <option value="#">기관1</option>
                    <option value="#">기관2</option>
                    <option value="#">기관3</option>
                    <option value="#">기관4</option>
                </select>
            </div>

        </div>

        <button id="submit">신청</button>

    </section>

</body>

</html>