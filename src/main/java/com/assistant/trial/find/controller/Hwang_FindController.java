package com.assistant.trial.find.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/find")
public class Hwang_FindController {
	
	@GetMapping("/find_my_id_result") 
	public String findMyIdResult() {
		return "/find/find_my_id_result";
	}
	
	@GetMapping("/find_my_id")
	public String findMyId() {
		return "/find/find_my_id";
	}
	
	@GetMapping("/find_my_password")
	public String findMyPassword() {
		return "/find/find_my_password";
	}
	
	@GetMapping("/login")
	public String login() {
		return "/find/login";
	}
	
	@GetMapping("/reset_my_password")
	public String resetMyPassword() {
		return "/find/reset_my_password";
	}
	
	
	@GetMapping("/mypage_delete")
	public String mypage_delete() {
		return "mypage_delete_account";
	}
	
	@GetMapping("/mypage_password")
	public String mypage_password() {
		return "mypage_password_auth";
	}
	
}
