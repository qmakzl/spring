package org.zerock.sample;

import org.springframework.stereotype.Component;

import lombok.Data;

// 자동생성이 되는 어노테이션 선언 -> @Controller, @Service, @Repository, 
// @Component, @RestController, @Avice
// 단, root-context.xml 또는 servlet-context.xml에서 component-scan이
// 정의한 패키지 안에 있어야 합니다.
@Component
// Lombok - getter, setter, 생성자, toString()

@Data

public class Chef {

}
