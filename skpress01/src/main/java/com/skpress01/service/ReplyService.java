package com.skpress01.service;

import java.util.List;

import com.skpress01.domain.Criteria;
import com.skpress01.domain.ReplyPageDTO;
import com.skpress01.domain.ReplyVO;

public interface ReplyService {
	/* 등록 */
	public int register(ReplyVO vo);

	/* 상세보기 */
	public ReplyVO get(Long rno);

	/* 수정 */
	public int modify(ReplyVO vo);

	/* 삭제 */
	public int remove(Long rno);

	/* 목록 */
	public List<ReplyVO> getList(Criteria cri, Long bno);
	
	/* 댓글 with 페이징 */
	public ReplyPageDTO getListPage(Criteria cri, Long bno);

}