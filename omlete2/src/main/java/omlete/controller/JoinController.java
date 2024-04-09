package omlete.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.exception.ExistsMemberException;
import omlete.service.MemberService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/join")
public class JoinController {
	
	private final MemberService memberService;
	
	@RequestMapping(value = "/member",method = RequestMethod.GET)
	public String memberJoin() {
		return "login/register";
	}
	
	//회원가입 성공
	@RequestMapping(value = "/member",method = RequestMethod.POST)
	public String memberJoin(@ModelAttribute Member member) {
		memberService.addMember(member);
		return "/login/myfavorite";

	}
	
	@RequestMapping(value = "/idCheck/{memberId}", method = RequestMethod.GET)
	@ResponseBody
	public String join(@PathVariable String memberId) {
		if(memberService.getMemberId(memberId) == null) {
			return "ok";
		}
		return "fail";
	}
	@RequestMapping(value = "/nicknameCheck", method = RequestMethod.POST)
	@ResponseBody
	public String checkNickname(@RequestParam String memberNickname) {
	    if (memberService.getMemberNickname(memberNickname) == null) {
	        return "ok";
	    }
	    return "fail";
	}
	
	//회원가입 실패
	@ExceptionHandler(value = ExistsMemberException.class)
	public String MemberExceptionHandler(ExistsMemberException exception, Model model) {
		model.addAttribute("message", exception.getMessage()); 
		model.addAttribute("member", exception.getMember());  
		return "login/register";
	}
}
