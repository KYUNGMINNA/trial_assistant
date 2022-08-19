package com.assistant.trial.member.controller;


import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.assistant.trial.mail.service.MailSendService;
import com.assistant.trial.member.model.MemberVO;
import com.assistant.trial.member.service.IMemberService;

@RestController
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private IMemberService service;
	
	@Autowired
	private MailSendService mailService;
	
	@PostMapping("/signup")
	public String register(@RequestBody MemberVO vo) {
		System.out.println("/member/: POST");
		service.register(vo);
		return "joinSuccess";
	}
	
	@PostMapping("/checkId")
	public String checkId(@RequestBody String memUserId) {
		System.out.println("/user/checkId: POST");
		System.out.println("param: " + memUserId);
		
		int chkNum = service.checkId(memUserId);
		
		// 가끔 중복 아이디가 생기는지라 임시 방편으로 이렇게 설정.
		if (chkNum >= 1) {
			System.out.println("아이디 중복");
			return "duplicated";
		} else {
			System.out.println("아이디 사용 가능");
			return "available";
		}
	}
	
	@PostMapping("/checkEmail")
	public String checkEmail(@RequestBody String memUserEmail) {
		System.out.println("/user/checkEmail: POST");
		System.out.println("param: " + memUserEmail);
		
		// 프론트단에 넘기기전에 String으로 보내야함. 서비스쪽에서 숫자 바꿀것
		String recievedCode = mailService.sendAuthMail(memUserEmail);
		
		System.out.println("생성된 이메일 인증번호 : " + recievedCode);
		
		// 프론트단으로 숫자 넘겨주기
		return recievedCode;
	}
	
	@PostMapping("/checkIdByEmail")
	public String checkIdByEmail(@RequestBody String memEmail) {
		System.out.println("/member/checkIdByEmail: POST");
		int result = service.checkIdByEmail(memEmail);
		
		if (result == 1)
			return "found";
		else
			return "notFound";
	}
	
	@PostMapping("/selectIdByEmail")
	public void selectIdByEmail(@RequestBody String memEmail,
								Model model) {
		System.out.println("/member/selectIdByEmail: POST");
		
		System.out.println(service.selectIdByEmail(memEmail).toString());
		
		// 찾아낸 id를 Attribute로 보냄
		model.addAttribute("member", service.selectIdByEmail(memEmail));
	}
	
	@PostMapping("/resetPwByIdAndEmail")
	public String resetPwByIdAndEmail(@RequestBody MemberVO vo) {
		
		System.out.println("프론트에서 넘어온 값 체크 : " + vo);
		
		MemberVO selectedMember = service.selectIdByEmail(vo.getMemEmail());
		
		// id와 이메일 둘다 유효한지 검증해야 함
		// 그런데 보통 이메일만 딱 인증해도 되긴 함
		if(service.checkId(selectedMember.getMemUserId()) == 1) {
			return "found";
		} else {
			return "notFound";
		}
	}
}
