package main.board.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mysql.cj.protocol.x.Notice;

@Controller
public class NoticeBoardController {
	@Autowired
	NoticeBoardService nservice;
	
	@GetMapping("/portfolio/notice/index.do")
	public String index(NoticeVO param, Model model) {
		model.addAttribute("result", nservice.index(param));
		return "/portfolio/notice/index";
	}
	
	
	@PostMapping("/portfolio/notice/process.do")
	public String insert(Model model, NoticeVO vo, HttpSession sess) {
		
		// 첨부파일추가

		
		if(nservice.insert(vo)) {
			model.addAttribute("code","alertMessageUrl");
			model.addAttribute("message","정상적으로 등록되었습니다.");
			model.addAttribute("url", "index.do");
		}else {
			model.addAttribute("message","등록되지 않았습니다.");
		}
		return "/include/alert";
	}
	
//	@RequestMapping("/index.do")
//	public String index() {
//		return "index";
//	}

}
