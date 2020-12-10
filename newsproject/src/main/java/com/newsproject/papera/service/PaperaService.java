package com.newsproject.papera.service;

import java.util.List;

import com.newsproject.papera.vo.PaperaVO;

//import net.newsproject.util.PageObject;

public interface PaperaService {

	// 1. list
	public List<PaperaVO> list();
	
	// 2.  view
	public PaperaVO view(int no, int inc);
	
	// 3. write
	public void write(PaperaVO vo);
	
	// 4. update
	public void update(PaperaVO vo);
	
	// 5. delete
	public void delete(PaperaVO vo);
	
}
