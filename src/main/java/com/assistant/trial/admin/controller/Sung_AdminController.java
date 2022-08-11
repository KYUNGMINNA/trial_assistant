package com.assistant.trial.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class Sung_AdminController {

	@GetMapping("/lookup_eligible_helper")
	public String lookUpEligibleHelper() {
		return "/admin/lookup_eligible_helper";
	}
	
	@GetMapping("/manage_helper_apply")
	public String manageHelperApply() {
		return "/admin/manage_helper_apply";
	}
	
	@GetMapping("/manage_helper_assign")
	public String manageHelperAssign() {
		return "/admin/manage_helper_assign";
	}
}
