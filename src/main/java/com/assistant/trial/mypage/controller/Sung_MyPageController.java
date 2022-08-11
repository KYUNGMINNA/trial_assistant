package com.assistant.trial.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class Sung_MyPageController {

	@GetMapping("/apply_detail")
	public String applyDetail() {
		return "/mypage/apply_detail";
	}
	
	@GetMapping("/apply_history")
	public String applyHistory() {
		return "/mypage/apply_history";
	}
	
	@GetMapping("/modify_helper_form")
	public String modifyHelperForm() {
		return "/mypage/modify_helper_form";
	}
	
	@GetMapping("/update_info")
	public String applyUpdateInfo() {
		return "/mypage/update_info";
	}
}
