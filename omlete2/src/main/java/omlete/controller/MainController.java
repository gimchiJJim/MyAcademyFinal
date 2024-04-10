package omlete.controller;

import java.util.List;

import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import omlete.dto.Contents;
import omlete.dto.Review;
import omlete.service.ContentsService;

@Controller
@RequestMapping("/*")
@RequiredArgsConstructor
public class MainController {

	private final ContentsService contentsService;

	@GetMapping("/*")
	public String main(Model model) {		
		model.addAttribute("contentsList", contentsService.getContentsList());
		
		return "main/main_body";
	}

	@RequestMapping("/main_series")
	public String mainSerise() {
		return "main/main_series";
	}
}
