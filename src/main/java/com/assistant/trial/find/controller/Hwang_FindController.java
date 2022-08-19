package com.assistant.trial.find.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.assistant.trial.member.model.MemberVO;
import com.assistant.trial.member.service.IMemberService;

@Controller
@RequestMapping("/find")
public class Hwang_FindController {
	
	/*
	 	@Responsebody 어노테이션 붙인 상태에서 return으로 주소 보내면
	 	아마 페이지 이동이 아니라 주소만 보여주게 될텐데 당연함!!!
	 	
	 	왜냐하면 URL을 JSON 데이터로 보내기 때문임.
	 	따라서 혼동하여 삽질하지 말 것!!
	 */
	
	@Autowired
	private IMemberService service;
	
	@GetMapping("/find_my_id_result") 
	public String findMyIdResult() {
		return "/find/find_my_id_result";
	}
	
	// Created by Sung
	@PostMapping("/find_my_id_result") 
	public String findMyIdResultPost(HttpServletRequest req, Model model) {
		
		String email = req.getParameter("userEmail");
		System.out.println("form으로 넘겨받은 이메일 주소 : " + email);
		
		model.addAttribute("id", service.selectIdByEmail(email).getMemUserId());
		
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
	
	// Created by Sung
	@PostMapping("/reset_my_password")
	public String resetMyPasswordPost(HttpServletRequest req, Model model) {
		String id = req.getParameter("userId");
		System.out.println("form으로 넘겨받은 아이디 : " + id);
		
		// 입력된 아이디를 기반으로 한 유저 정보를 프론트로 넘김
		model.addAttribute("member", service.selectOne(id));
		
		return "/find/reset_my_password";
	}
	
	// Created by Sung
	@PostMapping("/reset_pw")
	public String resetPassword(HttpServletRequest req, Model model) {
		
		String id = req.getParameter("userId");
		String pw = req.getParameter("userPw");
		
		MemberVO vo = service.selectOne(id);

		vo.setMemPw(pw);
		
		// 서비스단에서 update
		if (service.updatePasssword(vo)) {
			model.addAttribute("msg", "pwChangeSuccess");
		} else {
			model.addAttribute("msg", "pwChangeFailed");
		}
		
		// 이름 동적으로 처리해주긴 해야함
		return "/home";
	}
	
	@GetMapping("/login")
	public String login() {
		return "/find/login";
	}
	
	// Created by Sung
	@ResponseBody
	@PostMapping("/login")
	public String loginCheck(@RequestBody Map<String, String> param,
								HttpSession session,
								HttpServletResponse response) {
		System.out.println("/find/login POST 요청 들어옴");
		System.out.println("param : " + param);
		
		// 프론트에서 받아온 멤버의 ID를 매개변수로 넘겨 DB에서 일치하는 ID가 존재하는지 검색
		MemberVO memberData = service.selectOne(param.get("memUserId"));
		//System.out.println("프론트에서 가져온 유저의 id : " + memberData.getMemUserId());
		
		// 아이디 존재하고 비밀번호도 일치할 때
		if (memberData != null) {
			if (param.get("memPw").equals(memberData.getMemPw())) {
				
				// 로그인 성공할 경우 세션 정보 생성
				session.setAttribute("login", memberData);
				return "loginSuccess";
			} else {
				System.out.println("프론트측 입력값 : " + param.get("memPw"));
				System.out.println("db측 비번 : " + memberData.getMemPw());
				return "pwFail";
			}
		}
		return "idFail";
	}
	
	// Created by Sung
	@GetMapping("/logout") 
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("login");
		
		return new ModelAndView("redirect:/");
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
