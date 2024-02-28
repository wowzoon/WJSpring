package org.zerock.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private Long bno; // rapper클래스의 long이라 Long이다 ( 제네릭이라 대문자 L을 써야함 )
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updateDate;
}
