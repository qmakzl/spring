package com.newsproject.paperb.service;

import java.util.List;

import com.newsproject.paperb.vo.PaperbVO;

//import net.newsproject.util.PageObject;

public interface PaperbService {

	// 1. list
	public List<PaperbVO> list();
	
	// 2.  view
	public PaperbVO view(int no, int inc);
	
	// 3. write
	public void write(PaperbVO vo);
	
	// 4. update
	public void update(PaperbVO vo);
	
	// 5. delete
	public void delete(PaperbVO vo);
	
}
