package omlete.controller;

import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/main")
@RequiredArgsConstructor
public class MainController {
	@GetMapping("/*")
	public String main() {
		return "main/main_body";
	}
	
	@RequestMapping("/main_series")
	public String mainSerise() {
		return "main/main_series";
	}
}
