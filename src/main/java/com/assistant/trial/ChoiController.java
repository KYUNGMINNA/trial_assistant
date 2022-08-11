package com.assistant.trial;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ChoiController {
	
	//기관 회원가입 화면
	@RequestMapping("/com_join")
	public String com_join() {
		System.out.println("com_join 요청이 들어옴!");
		return "/helper/com_join";
	}
	
	//조력자 신청 기관 상세 조회 화면
	@RequestMapping("/helper_com_detail")
	public String helperComDetail() {
		System.out.println("helperComDetail 요청이 들어옴!");
		return "/helper/helper_com_detail";
	}
	
	//조력자신청_공고중인 조력자 유형선택(기관) 화면
	@RequestMapping("/helper_com_select")
	public String helper_com_select() {
		System.out.println("helper_com_select 요청이 들어옴!");
		return "/helper/helper_com_select";
	}
	
	//조력자신청_신청 성공 모달 화면
	@RequestMapping("/helper_suc_modal")
	public String helper_suc_modal() {
		System.out.println("helper_suc_modal 요청이 들어옴!");
		return "/helper/helper_suc_modal";
	}
	
	//조력자신청_신청 성공 화면
	@RequestMapping("/helper_success")
	public String helper_success() {
		System.out.println("helper_success 요청이 들어옴!");
		return "/helper/helper_success";
	}
	
	//조력자신청_공고중인 조력자 유형선택(개인) 화면
	@RequestMapping("/helper_user_select")
	public String helper_user_select() {
		System.out.println("helper_user_select 요청이 들어옴!");
		return "/helper/helper_user_select";
	}
	
	//회원가입_개인/기관선택 화면
	@RequestMapping("/join_select")
	public String join_select() {
		System.out.println("join_select 요청이 들어옴!");
		return "/helper/join_select";
	}
	
	//개인 회원가입 화면
	@RequestMapping("/user_join")
	public String user_join() {
		System.out.println("user_join 요청이 들어옴!");
		return "/helper/user_join";
	}
}
