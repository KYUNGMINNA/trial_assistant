package com.assistant.trial.member;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.assistant.trial.member.model.MemberVO;
import com.assistant.trial.member.repository.IMemberMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {

	// IMemberMapper 자동 주입
	@Autowired
	private IMemberMapper mapper;
	/*
	 * // 회원 가입 테스트 진행
	 * 
	 * @Test public void registerTest() { MemberVO vo = new MemberVO();
	 * vo.setMemUserId("aaa1234"); vo.setMemPw("abc1234");
	 * vo.setMemEmail("gilhong1@naver.com");
	 * 
	 * mapper.register(vo); }
	 */
	
	// 아이디 중복 생성방지 체크
	@Test
	public void checkIdTest() {
		int result = mapper.checkId("aaa1234");
		System.out.println("계정 개수 : " + result);
		if (result == 1)
			System.out.println("기존 아이디가 존재합니다.");
		else
			System.out.println("아이디를 생성할 수 있습니다.");
	}
	
	// 계정 탈퇴 테스트
	@Test
	public void deleteTest() {
		mapper.delete("aaa1234");
		if(mapper.selectOne("gilhong1") == null) {
			System.out.println("삭제 완료");
		} else {
			System.out.println("삭제 실패!");
		}
	}
}
