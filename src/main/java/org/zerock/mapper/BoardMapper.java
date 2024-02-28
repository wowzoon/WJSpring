package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
	//목록
	public List<BoardVO> getList();
	
	//등록
	public void insert(BoardVO board);
	//등록.key값 구하기
	public Integer insertSelectKey(BoardVO board);
	
	//상세보기
	public BoardVO read(Long bno);
	
	//삭제
	public int delete(Long bno);
	
	//수정
	public int update(BoardVO board);
	
	//전체클수
	public int getTotalCount(Criteria cri);
	
	//목록 with paging
	public List<BoardVO> getListWithPaging(Criteria cri);
	// 이런 경우! 오버로딩 하는게 나을거다. 페이징이 필요한 경우만 쓰면 되니까
}
