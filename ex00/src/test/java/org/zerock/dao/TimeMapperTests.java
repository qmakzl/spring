package org.zerock.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.mapper.TimeMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

// 테스트 실행할때 사용하는 프로그램 spring-test
@RunWith(SpringJUnit4ClassRunner.class)
// root-context.xml과는 상관이 없으므로 파일 정보를 넣어줘서 상관있게 해야한다.
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// log라는 변수를 사용할 수 있게 한다. - lombok 설정이 제대로 되어 있어야한다.
@Log4j
public class TimeMapperTests {
	// 자동 DI 선언 - root-context.xml에 vean 태그로 선언
	@Setter(onMethod_ = @Autowired)
	private TimeMapper timeMapper;
	
	@Test
	public void testGetTime() {
		log.info("======= Mybatis getTime 테스트 ===========");
		log.info(timeMapper.getTime());
		
	}
}
