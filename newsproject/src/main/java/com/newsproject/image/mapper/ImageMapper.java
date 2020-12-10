package com.newsproject.image.mapper;

import java.util.List;

import com.newsproject.image.vo.ImageVO;

//import net.newsproject.util.PageObject;

public interface ImageMapper {

	//1. list - 전체 데이터 구하기(페이지 처리) 
	public List<ImageVO> list();
	public Integer getRow();
	//2. view - 조회수 1증가
	public ImageVO view(int no);
	public void increase(int no);
	//3. write
	public void write(ImageVO vo);
	//4. update
	public void update(ImageVO vo);
	//5. delete - no, pw 
	public void delete(ImageVO vo);
	
	
}