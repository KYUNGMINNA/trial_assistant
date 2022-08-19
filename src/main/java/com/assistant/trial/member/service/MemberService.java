package com.assistant.trial.member.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.assistant.trial.member.model.MemberVO;
import com.assistant.trial.member.repository.IMemberMapper;

@Service
public class MemberService implements IMemberService {

	@Autowired
	private IMemberMapper mapper;
	
	@Override
	public int checkId(String memUserId) {
		return mapper.checkId(memUserId);
	}
	
	@Override
	public String sendEmailCode(String memUserEmail) {
		
		// 실제로 이메일을 보내는 기능은 해야 할게 많아서 클래스로 따로 빼야 함
		// 따라서 일단 코드만 생성하는 쪽으로 (콘솔창을 보고 입력) 임시 생성
		
		Random r = new Random();
		String chkCode = Integer.toString((r.nextInt(888888) + 111111));
		return chkCode;
	}

	@Override
	public void register(MemberVO member) {
		mapper.register(member);
	}

	@Override
	public MemberVO selectOne(String memUserId) {
		return mapper.selectOne(memUserId);
	}

	@Override
	public void delete(String memUserId) {
		mapper.delete(memUserId);
	}
	
	@Override
	public int checkIdByEmail(String memEmail) {
		return mapper.checkIdByEmail(memEmail);
	}
	
	@Override
	public MemberVO selectIdByEmail(String memEmail) {
		return mapper.selectIdByEmail(memEmail);
	}
	
	@Override
	public boolean updatePasssword(MemberVO member) {
		
		System.out.println("updatePassword Service id 존재유무 : " + member.getMemUserId());
		System.out.println("받아온 비번 : " + member.getMemPw());
		
		MemberVO account = selectOne(member.getMemUserId());
		String pastPw = account.getMemPw();
		System.out.println("이전 비번 : " + pastPw);
		
		mapper.updatePasssword(member);
		
		String presentPw = selectOne(member.getMemUserId()).getMemPw();
		
		System.out.println("바뀐 비번 : " + presentPw);
		
		if (member.getMemPw().equals(presentPw))
			return true;
		else
			return false;
	}
}
