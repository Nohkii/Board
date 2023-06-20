package main.board.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NoticeBoardController {
	@Autowired
	NoticeBoardService nservice;
	
	
	@PostMapping("/portfolio/notice/process.do")
	public String insert(Model model, NoticeVO vo, HttpSession sess) {
		
//		System.out.println("====================="+"vo.getTitle:"+vo.getTitle()+"RequestParam:"+title);
		
		if(nservice.insert(vo)) {
			model.addAttribute("message","정상적으로 등록되었습니다.");
			model.addAttribute("url", "index.do");
		}else {
			model.addAttribute("message","등록되지 않았습니다.");
		}
		return "/portfolio/notice/index.do";
	}
	
//	@RequestMapping("/index.do")
//	public String index() {
//		return "index";
//	}

}
