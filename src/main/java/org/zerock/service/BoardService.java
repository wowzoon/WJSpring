package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {
   
   //목록
   public List<BoardVO> getList(); 
   
   //등록
   public void register(BoardVO board);
   
   //상세보기
   public BoardVO get(Long bno);
   
   //수정
   public boolean modify(BoardVO board);
   
   //삭제
   public boolean remove(Long bno);
   
   //전체글수
   public int getTotal(Criteria cri);
   
   //목록 with paging
   public List<BoardVO> getList(Criteria cri);
}