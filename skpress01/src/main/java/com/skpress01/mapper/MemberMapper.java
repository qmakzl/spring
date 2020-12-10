package com.skpress01.mapper;

import com.skpress01.domain.MemberVO;

public interface MemberMapper {
	public MemberVO read(String userid);
}