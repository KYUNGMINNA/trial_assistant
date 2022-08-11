package com.assistant.trial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice_board")

public class Jung_NoticeController {
	@GetMapping("/list")
	   public String list() {
	      return "/notice_board/list";
	   }
	   
	   @GetMapping("/view")
	   public String view() {
	      return "/notice_board/view";
	   }
	   
	   @GetMapping("/write_corr")
	   public String writecorr() {
	      return "/notice_board/write_corr";
	   }
	      @GetMapping("/write")
		   public String write() {
		      return "/notice_board/write";
	   }
	
}
