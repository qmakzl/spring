package org.zerock.sample;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;
import lombok.Data;
import lombok.Setter;



//자동생성이 되는 어노테이션 선언 -> @Controller, @Service, @Repository, 
//@Component, @RestController, @Avice
//단, root-context.xml 또는 servlet-context.xml에서 component-scan이
//정의한 패키지 안에 있어야 합니다.
@Component
//Lombok - getter, setter, 생성자, toString() 자동작성
@Data
public class Restaurant {
	
	// lombok이 자동으로 만들어 놓은 setter를 이용하여 DI적용
	@Setter(onMethod_ = @Autowired)
	private Chef chef;
	
}
