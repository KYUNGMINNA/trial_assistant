package com.assistant.trial;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class chun {

	@GetMapping("/chun1")
	public String chun1() {
		
		return "helper_input/helper_input_indiv";
	}
	
	@GetMapping("/chun2")
	public String chun2() {
		
		return "helper_input/helper_input_com_lookup";
	}
	
}
