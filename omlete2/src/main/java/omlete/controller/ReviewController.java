package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/review")
public class ReviewController {
	@RequestMapping("/review_list")
	public String review() {
		return "review/review_list";
	}
	
	@RequestMapping("/review_list_short")
	public String reviewShort() {
		return "review/review_list_short";
	}
	
	@RequestMapping("/review_list_long")
	public String reviewLong() {
		return "review/review_list_long";
	}
	
	@RequestMapping("/reviewListTest")
	public String reviewListTest() {
		return "review/reviewListTest";
	}
	
	/*
	 * 오믈렛 TilesController.java 참조
	@RequestMapping(value = "/review_write", method = RequestMethod.GET)
	public String reviewWrite() {
		return "review/review_write";
	}
	*/
	
	@RequestMapping("/review_write")
	public String reviewWrite() {
		return "review/review_write";
	}
}
