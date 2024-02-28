package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = { org.zerock.config.PersistenceConfig.class
// }) ===>>> 이 세줄은 자바로 설정할떄
@Log4j
public class BoardMapperTests {
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper; // 주입! 인젝션숏트!
	
	/* 게시판리스트 테스트
	@Test
	public void testGetList() {
		// getList()의 return값은 List<BoardVO>.
		// List에서 한 개씩 꺼내서 boardVO 매개변수에 저장하 다음 log.info로 출력. 자바화살표는 => 여긴 ->
		mapper.getList().forEach(vo -> log.info(vo));
									// 함수의 본문 (람다식)
//		List<BoardVO> list =mapper.getList();
//		for(BoardVO : list) {}가 위에 한줄로 끝!
	}
	*/
}
