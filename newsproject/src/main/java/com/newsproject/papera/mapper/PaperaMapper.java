package com.newsproject.papera.mapper;

import java.util.List;

import com.newsproject.papera.vo.PaperaVO;

//import net.newsproject.util.PageObject;

public interface PaperaMapper {

	//1. list - 전체 데이터 구하기(페이지 처리) 
	public List<PaperaVO> list();
	public Integer getRow();
	//2. view - 조회수 1증가
	public PaperaVO view(int no);
	public void increase(int no);
	//3. write
	public void write(PaperaVO vo);
	//4. update
	public void update(PaperaVO vo);
	//5. delete - no, pw 
	public void delete(PaperaVO vo);
	
	
}