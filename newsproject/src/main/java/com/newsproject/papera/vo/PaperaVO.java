package com.newsproject.papera.vo;

import java.util.Date;

import lombok.Data;

// 자동으로 setter/getter, 생성자, toString()가 생성이 되어진다.
@Data
public class PaperaVO {

	private int no;
	private String title, content, writer;
	private Date writeDate;
	private int hit;
	private String pw;
	
}

