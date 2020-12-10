package com.newsproject.paper.controller;
//import lombok.AllArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newsproject.paper.service.PaperService;
import com.newsproject.paper.vo.PaperVO;

//import lombok.AllArgsConstructor;

//import net.newsproject.util.PageObject;

//자동 생성 - @Controller, @Service, @Repository, @Component,
//@RestController, @~Advice
//** servlet-context.xml에 component-scan으로 설정된 패키지 아래의 클래스만 찾아서
//생성해 준다.
@Controller
@RequestMapping("/paper")
//@AllArgsConstructor // 생성자를 이용한 자동 DI 적용
public class PaperController { 
	
	private final String MODULE = "paper"; 
	
	//@AllArgsConstructor // 생성자를 이용한 자동 DI 적용
	//@Autowired // setter를 이용한 자동 DI 적용
	@Autowired
	@Qualifier("paperServiceImpl")
	private PaperService service;
	
	  
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
	public String write(PaperVO vo) {
		service.write(vo);
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
	public String update(PaperVO vo) {
		service.update(vo);
		return "redirect:view.do?no=" + vo.getNo()
		+ "&inc=0";
	}
	// 5. 삭제 - get
	@PostMapping("/delete.do")
	public String delete(PaperVO vo) {
		service.delete(vo);
		return "redirect:list.do";
	}
		
		
}
