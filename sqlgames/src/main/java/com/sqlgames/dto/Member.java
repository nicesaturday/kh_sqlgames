package com.sqlgames.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String tel;
	private String addr1;
	private String addr2;
	private String postcode;
	private String birth;
	private int point;
	private String regdate;
	private String tag1;
	private String tag2;
	private String tag3;
}
