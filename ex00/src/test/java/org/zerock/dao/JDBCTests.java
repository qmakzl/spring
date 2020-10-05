package org.zerock.dao;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;
import lombok.extern.log4j.Log4j;

// log라는 변수를 사용할 수 있게 한다. - lombok 설정이 제대로 되어 있어야한다.
@Log4j
public class JDBCTests {
	
	// 드라이버 확인 - static 블록
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 테스트 메서드 선언 JUnit Test어노테이션 붙인 것은 다 실행해서 테스트 한다.
	@Test
	public void testExist() {
		log.info("======= JDBC 테스트 ===========");
		
		// 연결
		// try(자원 선언) -> 선언된 자원은 try블록은 빠져나갈때 자동 반환한다.
		// close() 없어도 된다.
		try(Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "java00", "java00")) {
			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
