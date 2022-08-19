package com.assistant.trial;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class na {

	@GetMapping("/na1")
	public String na1() {
		
		return "article/article_content";
	}
	

	@GetMapping("/na2")
	public String na2() {
		
		return "article/article_list";
	}
	

	@GetMapping("/na3")
	public String na3() {
		
		return "article/article_regist";
	}

	@GetMapping("/na4")
	public String na4() {
		
		return "helper_apply/helper_apply";
	}

	@GetMapping("/na5")
	public String na5() {
		
		return "admin_inquiry/admin_helper_inquiry";
	}

	@GetMapping("/na6")
	public String na6() {
		
		return "";
	}

	@GetMapping("/na7")
	public String na7() {
		
		return "";
	}

	@GetMapping("/na8")
	public String na8() {
		
		return "";
	}

	@GetMapping("/na9")
	public String na9() {
		
		return "";
	}
	
}
