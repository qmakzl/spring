package com.newsproject.paperb.mapper;

import java.util.List;

import com.newsproject.paperb.vo.PaperbVO;

//import net.newsproject.util.PageObject;

public interface PaperbMapper {

	//1. list - 전체 데이터 구하기(페이지 처리) 
	public List<PaperbVO> list();
	public Integer getRow();
	//2. view - 조회수 1증가
	public PaperbVO view(int no);
	public void increase(int no);
	//3. write
	public void write(PaperbVO vo);
	//4. update
	public void update(PaperbVO vo);
	//5. delete - no, pw 
	public void delete(PaperbVO vo);
	
	
}