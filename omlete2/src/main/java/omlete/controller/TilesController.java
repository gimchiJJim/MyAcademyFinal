package omlete.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import omlete.dao.ContentsDAO;
import omlete.dto.Contents;
import omlete.service.ContentsService;

@Controller
public class TilesController {
	@Inject
	private ContentsService contentsService;
	
	@RequestMapping("/")
	public String tiles() {
		return "main/main_body";
	}
	
	@RequestMapping("/profile")
	public String tiles3() {
		return "mypage/badge";
	}
	
	@RequestMapping("/review")
	public String tiles4() {
		return "review/review_list";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String tiles2(Model m, int no) {
		
		Contents contents = contentsService.getContents(no);
		m.addAttribute("contents", contents);
		
		return "detail/product-detail";
	}
	
	@RequestMapping("/login")
	public String tiles6() {
		return "login/forgot-id";
	}
	
	@RequestMapping("/register")
	public String tiles7() {
		return "login/register";
	}
	
	@RequestMapping("/admin")
	public String tiles8() {
		return "admin/index";
	}
}
