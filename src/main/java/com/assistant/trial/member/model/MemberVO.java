package com.assistant.trial.member.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*9
	CREATE TABLE "MEMBER" (
	"mem_id"	NUMBER(10)		NOT NULL,
	"mem_userid"	VARCHAR(50)	DEFAULT ''	NOT NULL,
	"mem_pw"	VARCHAR(50)	DEFAULT ''	NOT NULL,
	"mem_email"	VARCHAR(100)	DEFAULT ''	NOT NULL,
	"mem_regdate"	DATE	DEFAULT SYSDATE	NOT NULL,
	"mem_lastlogin"	DATE	DEFAULT SYSDATE	NOT NULL,
	"mem_type"	NUMBER(1)	DEFAULT 0	NOT NULL
);
 */

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	
	private int memId;
	private String memUserId;
	private String memPw;
	private String memEmail;
	private Timestamp memRegDate;
	private Timestamp memLastLogin;
	private int memType;

}
