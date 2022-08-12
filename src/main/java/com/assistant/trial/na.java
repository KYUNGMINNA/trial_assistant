package com.assistant.trial;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class na {

	//조력자 공고 상세 내용
	@GetMapping("/na1")
	public String na1() {
		
		return "article/article_content";
	}
	
	//조력자 공고 목록
	@GetMapping("/na2")
	public String na2() {
		
		return "article/article_list";
	}
	

	//관리자가 조력자 공고 모집 게시글 작성 화면
	@GetMapping("/na3")
	public String na3() {
		
		return "article/article_regist";
	}
	
	//사용자의 조력자 신청 화면
	@GetMapping("/na4")
	public String na4() {
		
		return "helper_apply/helper_apply";
	}

	//관리자가 조력자 신청을 접수한 사람들 목록 조회
	@GetMapping("/na5")
	public String na5() {
		
		return "admin_inquiry/admin_helper_inquiry";
	}

	
}
