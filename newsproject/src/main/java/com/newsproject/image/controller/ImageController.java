package com.newsproject.image.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newsproject.image.service.ImageService;
import com.newsproject.image.vo.ImageVO;
import com.newsproject.util.FileUtil;
import com.newsproject.image.controller.ImageController;

import lombok.extern.log4j.Log4j;


//자동 생성 - @Controller, @Service, @Repository, @Component,
//@RestController, @~Advice
//** servlet-context.xml에 component-scan으로 설정된 패키지 아래의 클래스만 찾아서
//생성해 준다.
@Controller
@Log4j
@RequestMapping("/image")
//@AllArgsConstructor // 생성자를 이용한 자동 DI 적용
public class ImageController { 
	
	private final String MODULE = "image"; 
	
	//@AllArgsConstructor // 생성자를 이용한 자동 DI 적용
	//@Autowired // setter를 이용한 자동 DI 적용
	@Autowired
	@Qualifier("imageServiceImpl")
	private ImageService service;
	
	 
	// 1. 리스트 - get
	@GetMapping("/list.do")
	// PageObject에서 데이터가 넘어오지 않으면 기본페이지 1, 페이지당 데이터의 갯수는 10으로 한다.
	public String list(Model model) {
		// model에 데이터를 담으면 request에 데이터가 담기게 된다.
		// jsp에서 꺼내 쓸때는${list} == ${requestScope.list}
		model.addAttribute("list", service.list());
		return MODULE + "/list";
	}
	
	// 2. 보기 - get
	@GetMapping("/view.do")
	public String view(Model model, int no, int inc) {
		model.addAttribute("vo", service.view(no, inc));
		return MODULE + "/view";
	}
	
	// 3-1. 글쓰기폼 -get 
	@GetMapping("/write.do")
	public String writeForm() {
		return MODULE + "/write";
	}
	// 3-2. 글쓰기처리 - post
	@PostMapping("/write.do")
	public String write(ImageVO vo, MultipartFile imageFile,
			RedirectAttributes rttr, HttpServletRequest request)
					throws IllegalStateException, IOException {
		String path = "/upload/image/";
		String realPath = request.getServletContext().getRealPath(path);
		log.info(realPath);
		
		String fileName = imageFile.getOriginalFilename();
		
		// 저장하려는 파일시스템의 실제 위치와 파일명 찾기
		String saveFileName 
		= FileUtil.checkDuplicate(realPath+fileName);
		log.info(saveFileName);
		
		// 실제적으로 실제위치와 파일명으로 저장해야 한다. request안에 data로 담겨있는 파일 내용을
		// 실제적인 파일로 저장
		imageFile.transferTo(new File(saveFileName));
		
		// 서버에 올라간 파일명만 가져오기 - path 없음.
		String uploadFileName 
		= saveFileName.substring(saveFileName.lastIndexOf("\\")+1);
		
		vo.setFileName(path + uploadFileName);
		// DB에 정보 저장하기
		service.write(vo);
		
		// 글쓰기 정상처리 표시 데이터 셋팅
		rttr.addFlashAttribute("processResult", "write success");
		
		return "redirect:list.do";
	}
	// 4-1. 글수정폼 - get
		@GetMapping("/update.do")
		public String updateForm(Model model, int no) {
			// 데이터를 가져오기 위해 view() 호출 : inc = 0
			model.addAttribute("vo", service.view(no, 0));
			return MODULE + "/update";
		}
		// 4-2. 글수정처리 - post
		@PostMapping("/update.do")
		public String update(ImageVO vo, RedirectAttributes rttr) {
			service.update(vo);
			
			// 글수정 정상처리 표시 데이터 셋팅
			rttr.addFlashAttribute("processResult", "update success");
			
			return "redirect:view.do?no=" + vo.getNo()
			+ "&inc=0";
		}
		// 5. 삭제 - get
		@PostMapping("/delete.do")
		public String delete(ImageVO vo, RedirectAttributes rttr) {
			service.delete(vo);
			
			// 글수정 정상처리 표시 데이터 셋팅
			rttr.addFlashAttribute("processResult", "delete success");
			
			return "redirect:list.do";
		}
}