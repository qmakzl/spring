package org.zerock.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;

// 자동 생성 - @Controller, @Service, @Repository, @Component,
// @RestController-아작스사용할때??, @Advice-예외처리
// ** servlet-context.xml에 component-scan으로 설정된 패킹이 아래의 클래스만 찾아서
// 생성해준다
@Controller
@RequestMapping("/sample")
@Log4j // lombok의 라이브러리 포함 - log를 사용 가능(포함)
public class SampleController {
	
	// 모든 방식을 다 허용
	@RequestMapping("") // 위에 /sample 썼을때 여기""로 들어온다
	public void basic() {
		log.info("basic ....................");
	}
	
	// get 방식만 허용
	
	//@RequestMapping(value = "/basicOnlyGet", method = RequestMethod.GET)
	@GetMapping("/basicOnlyGet") // 바로 위에줄이랑 같은거임 쓰는 말이 다른것뿐
	public void basicGet2() {
		log.info("basicOnlyGet .........................");
		// jsp파일은/WEB-INF/views/ + sample + / basicOnlyGet.jsp
	}
	// 다른 jsp를 선언해서 사용할때 리턴타입을 string
	@GetMapping("/stringGet")
	public String stringGet() {
		log.info("stringGet................");
		// WEB-INF/views/ + test/string + .jsp
		return "test/string";
	}
	
	@GetMapping("/modelAndView")
	public ModelAndView modelAndView() {
		ModelAndView mav = new ModelAndView();
		// 찾아야 할 jsp의 정보를 셋팅한다.
		mav.setViewName("modelAndView");
		// jsp에서 사용할 데이터 셋팅한다.
		mav.addObject("name", "이윤기");
		return mav;
	}
	
	@GetMapping("/getObject")
	public @ResponseBody DataVO getObject() {
		DataVO vo = new DataVO();
		vo.setName("lee");
		vo.setAge(26);
		log.info(vo);
		return vo;
	}
	
	// ---------------넘어오는 파라메터 데이터 수집하기
	// 요구하는 데이터가 String인 경우 데이터가 넘어오지 않더라도 문제가 생기지 않는다.
	// -- 데이터는 넘어오지 않는다.
	// http://localhost/sample/name?name=lee
	@GetMapping("/name")
	public void getName(String name) {
		log.info(name);
	}


	//---------------넘어오는 파라메터 데이터 수집하기
	// 요구하는 데이터가 int인 경우 데이터가 넘어오지 않으면 문제가 생긴다.
	// -- 데이터는 넘어오지 않는다.
	// http://localhost/sample/age?age=26
	@GetMapping("/age")
	public void getName(int age) {
		log.info(age);
	}

	//---------------넘어오는 파라메터 데이터 수집하기
	// 요구하는 데이터가 list인 경우 데이터가 넘어오지 않으면 문제가 생긴다.
	// 값이 넘어오지 않으면 1로 셋팅한다.
	// http://localhost/sample/list?page=1
	// @RequestParam : 기본값 셋팅과 자바의 변수명과 파라메터 이름이 틀린경우 사용해야만 한다.
	@GetMapping("/list")
	public void getList(@RequestParam(defaultValue = "1", name = "p") int page) {
		log.info(page);
	}
		
	// 똑같은 파라메터로 여러개의 데이터 받기
	// http://localhost/sample/nos?nos=1&nos=10&nos=15
	@GetMapping("/nos")
	public void getNos(int nos[]) {
		log.info(Arrays.toString(nos));
	}
				
	// 형식이 다른 여러개의 데이터들은 클래스를 만든다
	@GetMapping("/data")
	public void getData(DataVO vo) {
		log.info(vo);
	}	

	//************** 파일 업로드에 대한 처리 메서드 *********************
	// 파일을 올릴 수 있는 입력 창으로 이동하는 메서드
	@GetMapping("/uploadForm")
	public String uploadForm() {
		return "uploadForm";
	}
	
	// 전송되는 파일을 처리하는 메서드 - 파일 여러개를 첨부할 수 있는 처리
	@PostMapping("/upload")
	public String upload(ArrayList<MultipartFile> files, Model model) {
		
		// 저장할 위치
		String path = "D:\\workspace\\upload";
				
		ArrayList<FileInfo> list = new ArrayList<FileInfo>();
		
		// 여러개의 파일을 files라는 이름으로 받는다. for each 람다식을 이용한 처리
		// 임시로 올렸다가 저장하라는 명령이 없어서 사라진다. -> 저장처리를 해야한다
		files.forEach(file -> {
			log.info("제목-----------------");
			String fileName = file.getOriginalFilename();
			long size = file.getSize();
			FileInfo fi = new FileInfo();
			fi.setFileName(fileName);
			fi.setSize(size);
			list.add(fi);
			log.info("파일명:" + fileName);
			log.info("파일 사이즈:" + size);
			
			//파일 저장하는 처리
			try {
				// 저장하는 처리
				file.transferTo(new File(path, fileName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		});
		
		// 첨부된 파일의 정보를 jsp로 보내기 위해서 model에 담는다.
		model.addAttribute("list", list);
		
		return "upload";
	}
	
}