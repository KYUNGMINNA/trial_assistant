package com.assistant.trial.mail.service;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import com.assistant.trial.mail.MailUtils;

@Service("mss")
public class MailSendService {
	
    @Autowired
    private JavaMailSenderImpl mailSender;

    //인증코드 난수 발생
    private String getAuthCode() {
    	Random r = new Random();
		String chkCode = Integer.toString((r.nextInt(888888) + 111111));
        return chkCode;
    }

    //인증메일 보내기
    public String sendAuthMail(String email) {
        //6자리 난수 인증번호 생성
        String authKey = getAuthCode();

        //인증메일 보내기
        try {
            MailUtils sendMail = new MailUtils(mailSender);
            sendMail.setSubject("회원가입 이메일 인증");
            sendMail.setText(new StringBuffer().append("<h1>[이메일 인증]</h1>")
            .append("<p>아래의 수를 인증번호 입력 창에 입력해 주세요.</p>")
            .append("인증번호 : ")
            .append(authKey)
            .toString());
            sendMail.setFrom("johnsmithsystem220902", "관리자");
            sendMail.setTo(email);
            sendMail.send();
        } catch (MessagingException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

          return authKey;
    }

}
