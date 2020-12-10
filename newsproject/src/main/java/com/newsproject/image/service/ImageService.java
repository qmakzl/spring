package com.newsproject.image.service;

import java.util.List;

import com.newsproject.image.vo.ImageVO;

//import net.newsproject.util.PageObject;

public interface ImageService {

	// 1. list
	public List<ImageVO> list();
	
	// 2.  view
	public ImageVO view(int no, int inc);
	
	// 3. write
	public void write(ImageVO vo);
	
	// 4. update
	public void update(ImageVO vo);
	
	// 5. delete
	public void delete(ImageVO vo);
	
}
