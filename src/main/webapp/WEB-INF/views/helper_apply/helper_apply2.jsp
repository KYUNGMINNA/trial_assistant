<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>

	  <div class="container-fluid">

        <div class="row">
            <div class="col-md-2"></div> <!--왼쪽 aside공간 -->

    














            <div class="col-md-8"><!-- 중앙 공간-->
           
                <h2>조력자 신청</h2>
                
<!-- 
                <form action="./tt.html" method="post"> < -->

                    <div>
                        <h3>학력 사항</h3>
                        <div class="text-right">
                            <button type="button" class="insert_edu">학력 사항 입력</button>
                                <!--data-toggle="modal" data-target="#myModal"-->
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>학교명</td>
                                    <td>학과전공</td>
                                    <td>학위</td>
                                    <td>입학일</td>
                                    <td>졸업일</td>
                                    <td>최종학력</td>
                                    <td>관리</td>
                                </tr>
                            </thead>
                            <tbody class="info_insert">
                                <!-- <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="file" name="" id=""></td>
                                </tr>
                         -->
                            </tbody>
                          
                        </table>
                      
                        <br>
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td>증명 파일</td>
                                    <td><input type="file" name="hepler_edu_file"></td>   
                                </tr>
                            </tbody>
                          
                        </table>
                    </div>
              
                        
                    
            
                    <br><br>

                    <div>
                        <h3>근무 경력 사항</h3>
                        <div class="text-right">
                            <button type="button" class="career_info">근무 경력 사항 입력</button>
                                <!--data-toggle="modal" data-target="#myModal"-->
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td>회사명</td>
                                    <td>기간</td>
                                    <td>수행업무</td>
                                    <td>부서</td>
                                    <td>직책</td>
                                    <td>관리</td>
                                </tr>
                            </thead>
                            <tbody class="career_insert">
                                <!-- <tr>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                    <td><input type="text" class="form-control"></td>
                                </tr> -->

                            </tbody>
                        </table>
                        
                        <br>
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td>증명 파일</td>
                                    <td><input type="file" name="hepler_career_file"></td>   
                                </tr>
                            </tbody>
                          
                        </table>
                    </div>

 
                    <br><br>
                    

                <!-- </form> -->
            </div>




  

            <!-- 학력 사항 모달  -->
            <!-- Modal -->
           
          
            <div class="modal fade" id="edu_info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>학력사항 입력</h4>
                    </div>


                    <div class="modal-body">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td>학교명</td>
                                    <td colspan="3">
                                        <input type="text" name="helper_school_name" id="helper_school_name">
                                    </td>
                                </tr>
                                <tr>
                                    <td>학과(전공)</td>
                                    <td><input type="text" name="helper_school_major" id="helper_school_major"></td>
                                    <td>학위</td>
                                    <td>
                                        <select name="helper_education" id="helper_education">
                                            <option value="" selected>최종 학위</option>
                                            <option value="">대학교 수료</option>
                                            <option value="">대학원 졸업</option>
                                            <option value="">석사 수료</option>
                                            <option value="">석사 졸업</option>
                                            <option value="">박사 수료</option>
                                            <option value="">박사 졸업</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>입학 년월</td>
                                    <td><input type="text" name="helper_school_admission" id="helper_school_admission"></td>
                                    <td>졸업 년월</td>
                                    <td><input type="text" name="helper_school_graduate" id="helper_school_graduate"></td>
                                    
                                </tr>

                            </tbody>
                        </table>
                        <div class="text-center">
                            <button type="button" class="edu_btn">입력</button>
                        </div>
                    </div>


                </div>
                </div>
            </div>



            <!--수정용 모달 -->
             
            <div class="modal fade" id="edu_modify_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>수정모달 입력</h4>
                    </div>


                    <div class="modal-body">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td>학교명</td>
                                    <td colspan="3">
                                        <input type="text" name="modi_helper_school_name" id="modi_helper_school_name">
                                    </td>
                                </tr>
                                <tr>
                                    <td>학과(전공)</td>
                                    <td><input type="text" name="modi_helper_school_major" id="modi_helper_school_major"></td>
                                    <td>학위</td>
                                    <td>
                                        <select name="modi_helper_education" id="modi_helper_education">
                                            <option value="">최종 학위</option>
                                            <option value="">대학교 수료</option>
                                            <option value="">대학원 졸업</option>
                                            <option value="">석사 수료</option>
                                            <option value="">석사 졸업</option>
                                            <option value="">박사 수료</option>
                                            <option value="">박사 졸업</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>입학 년월</td>
                                    <td><input type="text" name="modi_helper_school_admission" id="modi_helper_school_admission"></td>
                                    <td>졸업 년월</td>
                                    <td><input type="text" name="modi_helper_school_graduate" id="modi_helper_school_graduate"></td>
                                    
                                </tr>

                            </tbody>
                        </table>
                        <div class="text-center">
                            <button type="button" class="modi_edu_btn">입력</button>
                        </div>
                    </div>


                </div>
                </div>
            </div>
                   <!-- 학력 사항 모달   끝-->




            <!-- 경력  사항 모달  -->
            <div class="modal fade" id="career_info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>학력사항 입력</h4>
                    </div>


                    <div class="modal-body">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td>회사명/활동기관명</td>
                                    <td colspan="3">
                                        <input type="text" name="helper_career_name" id="helper_career_name">
                                    </td>
                                </tr>
                                <tr>
                                    <td>기간</td>
                                    <td>
                                        <input type="text" name="helper_career_period" id="helper_career_period">
                                    </td>
                                    <td>수행업무</td>
                                    <td>
                                        <input type="text" name="helper_career_wrok" id="helper_career_wrok"></td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>부서</td>
                                    <td><input type="text" name="helper_career_department" id="helper_career_department"></td>
                                    <td>직책</td>
                                    <td><input type="text" name="helper_career_position" id="helper_career_position"></td>
                                    
                                </tr>

                            </tbody>
                        </table>
                        <div class="text-center">
                            <button type="button" class="career_btn">입력</button>
                        </div>
                    </div>


                </div>
                </div>
            </div>

        <!-- 경력사항 수정용 모달 -->
                    
        <div class="modal fade" id="modi_career_info" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4>학력사항 입력</h4>
                </div>

                <div class="modal-body">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <td>회사명/활동기관명</td>
                                <td colspan="3">
                                    <input type="text" name="modi_helper_career_name" id="modi_helper_career_name">
                                </td>
                            </tr>
                            <tr>
                                <td>기간</td>
                                <td>
                                    <input type="text" name="modi_helper_career_period" id="modi_helper_career_period">
                                </td>
                                <td>수행업무</td>
                                <td>
                                    <input type="text" name="modi_helper_career_wrok" id="modi_helper_career_wrok"></td>
                                </td>
                            </tr>
                            <tr>
                                <td>부서</td>
                                <td><input type="text" name="modi_helper_career_department" id="modi_helper_career_department"></td>
                                <td>직책</td>
                                <td><input type="text" name="modi_helper_career_position" id="modi_helper_career_position"></td>
                                
                            </tr>

                        </tbody>
                    </table>
                    <div class="text-center">
                        <button type="button" class="modi_career_btn">수정</button>
                    </div>
                </div>


            </div>
            </div>
        </div>
                    <!-- 경력  사항 모달 끝  -->
<%@ include file="../include/footer.jsp"%>
