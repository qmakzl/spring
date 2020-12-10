package com.newsproject.paper.service;

import java.util.List;

import com.newsproject.paper.vo.PaperVO;

//import net.newsproject.util.PageObject;

public interface PaperService {

	// 1. list
	public List<PaperVO> list();
	
	// 2.  view
	public PaperVO view(int no, int inc);
	
	// 3. write
	public void write(PaperVO vo);
	
	// 4. update
	public void update(PaperVO vo);
	
	// 5. delete
	public void delete(PaperVO vo);
	
}
