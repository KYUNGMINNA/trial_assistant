package com.assistant.trial.approval.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/approval")
public class Hwang_ApprovalController {

	@GetMapping("/approved_helper_lookup")
	public String approvedHelperLookup() {
		return "/approval/approved_helper_lookup";
	}
	
	@GetMapping("/helper_approval")
	public String helperApproval() {
		return "/approval/helper_approval";
	}
}