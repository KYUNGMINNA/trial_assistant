<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의 접수 내역 조회</title>

<!-- 부트스트랩 3.1.1 가져오기 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
 <script src="https://unpkg.com/multiple-select@1.5.2/dist/multiple-select.min.js"></script>
<style>

/*맨 마지막 신청 버튼*/
.submit_btn {
	text-align: center;
}

/* 테이블의 로우스팬3인 주소 글자 중앙(세로의 중앙)위치*/
.table>tbody>tr>td.add_rowspan {
	vertical-align: middle;
}
</style>
</head>
<body>


	<!--     text-center 적용하면 col크기의 중간에 텍스트 작성-->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<!--왼쪽 aside공간 -->
			<div class="col-md-8">
				<!-- 중앙 공간-->
				<h2>조력자 신청</h2>

				<form action="<c:url value='/b'/>" method="post">
					<br>
					<br>
					
					
					
					<!--  감정 분야 선택 -->
					<div>
						<h3>감정분야 및 세부 구분 선택</h3>
						<hr>
						<span>감정 분야 선택</span> <select name="mid" id="mid">
							<option value="sel" selected>중 분류</option>
							<option value="general">일반감정인</option>
							<option value="inter">통번역인</option>
							<option value="agency">기관추천조력자</option>
						</select> <select name="small" id="small">
							<option value="sel" selected>소 분류</option>
						</select>
						<hr>
					</div>
					
					 <br>


					<!-- 희망 법원 선택 -->
                    <div>
                        <h3>희망 법원 선택</h3>
                        <hr>
                        <span>법원 목록</span>
                        <span>희망 법원</span>

                        <div>               
                                <span> 희망 법원 선택</span>
  
                            <select name="law" multiple="multiple" id='law' size="10">
                                <option value="a1">대법원</option>
                                <option value="a2">서울고등법원</option>
                                <option value="a3">서울고등법원(춘천)</option>
                                <option value="a4">대구고등법원</option>
                                <option value="a5">부산고등법원</option>
                                <option value="a6">인천고등법원</option>
                                <option value="a7">광주고등법원</option>
                                <option value="a8">대전고등법원</option>
                            </select>
                            <button type="button" id='btn_add'>법원 선택</button>
                            <button type="button" id='btn_minus'>법원 빼기</button>
                            <select name="law2" multiple="multiple" id='law2' size="10">
                            </select>
                        </div>
                        <hr>

                    </div>

                    <br>					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<br>
					<div class="submit_btn ">
						<button class="btn btn-lg">신청</button>
					</div>
					
				</form>
				<!-- 서버로 전송 끝-->


			</div>
			<!-- 중앙 공간 끝-->


			<div class="col-md-2"></div>
			<!--오른쪽 aside 공간-->
		</div>
		<!-- div class=row 끝-->


	</div>
	<!-- div class=container-fluid 끝-->


</body>
</html>

<script>
	$(document).ready(function(){
		
		
		/* 감정 분야 중 분류 선택에 따른  소 분류 선택*/
		$('#mid').change(function(){
			if($('#mid').val()==='general'){
	    		$('#small').html("<option value='sel'>선택</option><option value='survey'>측량</option><option value='document'>문서</option>");
	    	}else if($('#mid').val()==='inter'){
	    		$('#small').html("<option value='sel'>선택</option><option value='interpreter'>통역인</option><option value='translator'>번역인</option>");
	    	}else{
	    		$('#small').html("<option value='sel'>선택</option><option value='doctor'>의사</option><option value='accountant'>회계사</option>");
	    	}
		});
		
		
		/*접수 신청 버튼 클릭시 */
		$('.btn').click(function(){
			
			if($('#mid').val()==='sel'){
				if($('#small').val()==='sel'){
					alert('조력자 분야를 다시 설정하세요');
				}
			}
			
			if($('#mid').val()!=='sel' && $('#small').val()==='sel'){
				alert('조력자 소분야를 다시 설정하세요');
			}
		});
		
		
		/*희망 법원 선택*/
		var wovks={0:"대법원",1:"서울고등법원",2:"서울고등법원(춘천)",3:"대구고등법원",4:"부산고등법원",5:"인천고등법원",6:"광주고등법원",7:"대전고등법원"}

		var arr=[];
		var arr2=[];
		
		$('#btn_add').click(function(){
			var select = document.getElementById('law');
			var selected_value = [...select.selectedOptions].map(option => option.value);
			var selected_text = [...select.selectedOptions].map(option => option.text);
			
			//select_value == a1,a2,a3....  selected_text == 대법원,서울고등법원,서울고등법원(춘천)....
			/*
			console.log(selected_value)   ::배열 값 확인용
			console.log(selected_text)		::배열 값 확인용
			console.log(selected_value[0]);  ::해당 인덱스의 값 확인
			console.log(selected_text[0]);  ::해당 인덱스의 값 확인
		 	*/
		 	
		 	
		 	var code=$('#law2').html().trim();   //누적 코드를 저장하는 공간
		 	var dd=[];
		 	for(var n=0;n<selected_value.length;n++){
				code=code+"<option value='"+selected_value[n]+"'>"+selected_text[n]+"</option>"
				dd="<option value='"+selected_value[n]+"'}>"+selected_text[n]+"</option>"
				
				
				//희망법원을 배열에 저장하는데 ,그저장한 배열안에 중복되어 있는지 확인
				 for(var das of arr){
					 if(das ===selected_text[n]){
						 alert('중복입니다 꺼지세요');
						 return
					 }
				 }
				//중복되지 않았을 시에 배열에 저장 됨
				arr.push(selected_text[n]); //법원 이름만 저장됨
				

				arr2.push(dd);  //<option>~~~</option>의 형태로 배열에 저장됨

		}
		
			$('#law2').html(code); 
			
			
			/* 
			console.log($('#law2').html());
			console.log($('#law2').text().trim());
			console.log($('#law2').val());
			console.log(arr);
			 */
			 

			 
			 
			 
			 
			 
			 
			 
			
		
		})
		
		//희망 법원 빼기 
		$('#btn_minus').click(function(){
			var select = document.getElementById('law2');
			var selected_value = [...select.selectedOptions].map(option => option.value);
			var selected_text = [...select.selectedOptions].map(option => option.text);
			//console.log(selected_text);
			
			
			var code=$('#law2').html();   //누적 코드를 저장하는 공간
			//console.log(code); //<option>~!~~ </option>의 형태로 나옴 
			
			/* 	
			console.log(arr);
			console.log(arr2);
			console.log(code);
			*/
			
			for(var aabb=0;aabb<selected_text.length;aabb++){
				if(arr.includes(selected_text[aabb])){
					arr2.pop(arr.indexOf(selected_text[aabb]));  //<option></option>의 형태로 저장되어 있는 배열에서 삭제함
					arr.pop(selected_text[aabb]);  //법원 이름만 적혀있는 배열에서 삭제함
				}
				
			}
			$('#law2').html(arr2); 
			
			if(selected_text.length ===0){
				alert('희망 법원이 아닌 것을 선택하세요.')
			}
		
		})
		
		
		

	
		
	    }) //sript 종료 

</script>