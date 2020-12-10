package com.skpress01.service;

import java.util.List;

import com.skpress01.domain.BoardAttachVO;
import com.skpress01.domain.BoardVO;
import com.skpress01.domain.Criteria;

public interface BoardService {
	// 등록
	public void register(BoardVO board);
	
	// 상세보기
	public BoardVO get(Long bno);
	
	// 수정
	public boolean modify(BoardVO board);
    
	// 삭제
	public boolean remove(Long bno);
	
	// 목록
	public List<BoardVO> getList(Criteria cri);
		
	public int getTotal(Criteria cri);
	
	//첨부파일 목록
	public List<BoardAttachVO> getAttachList(Long bno);

}
