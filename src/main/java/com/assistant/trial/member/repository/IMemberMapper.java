package com.assistant.trial.member.repository;

import com.assistant.trial.member.model.MemberVO;

public interface IMemberMapper {
	
	//아이디 중복 체크 기능
	int checkId(String memUserId);
	
	//회원 가입 기능
	void register(MemberVO member);
	
	//회원 정보 조회 기능
	MemberVO selectOne(String memUserId);
	
	//회원 탈퇴 기능
	void delete(String memUserId);

	// 이메일로 아이디 존재하는지 체크
	int checkIdByEmail(String memEmail);
	
	// 이메일로 아이디 찾아서 반환
	MemberVO selectIdByEmail(String memEmail);
	
	// 회원 비밀번호 초기화
	boolean updatePasssword(MemberVO member);
}