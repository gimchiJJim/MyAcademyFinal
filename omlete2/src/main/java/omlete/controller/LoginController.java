package omlete.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.exception.MemberNotFoundException;
import omlete.service.MemberService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/login")
public class LoginController {

	private final MemberService memberService;

	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String memberLogin() {
		return "login/login";
		
	}
	
	
	@RequestMapping(value = "/forgot", method = RequestMethod.GET)
	public String forgotId() {
		return "login/forgot_id";
		
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "login/register";
		
	}
	
	@RequestMapping(value = "/member", method = RequestMethod.POST)
	public String memberLogin(@ModelAttribute Member member, HttpSession session){
		Member loginMember = memberService.loginAuth(member);
		session.setAttribute("loginMember", loginMember);
		// 로그인이 성공하면 메인 화면으로 이동
		return "redirect:/";
	}
	
	
	 //member 비밀번호찾기
	 
	 @RequestMapping(value="/forgot_id",method = RequestMethod.GET ) 
	 public String forgot_id() {
	        return "login/forgot_id"; }
	 
	 //member 아이디, 비밀번호찾기(10자리 숫자 랜덤배열)
	  
	 @RequestMapping(value = "/forgot_id", method = RequestMethod.POST)
	 public String find(@ModelAttribute Member member, Model model) {
	     try {
	    	 Member foundMember = memberService.getMemberEmail(member.getMemberEmail()); // 수정된 부분
	         String newPasswd = generateRandomPassword(10);
	         foundMember.setMemberPasswd(newPasswd);
	         memberService.modifyMemberInfo(foundMember);
	         model.addAttribute("memberId", foundMember.getMemberId());
	         model.addAttribute("memberPasswd", newPasswd);
	         model.addAttribute("memberStatus", foundMember.getMemberStatus());
	         return "member/forgot_id_result";
	     } catch (MemberNotFoundException e) {
	         model.addAttribute("errorMessage", e.getMessage());
	         return "login/forgot_id";
	     }
	 }
		
		// 10자리 숫자 랜덤 비밀번호 생성 메소드
		private String generateRandomPassword(int length) {
		    StringBuilder newPassword = new StringBuilder();
		    for (int i = 0; i < length; i++) {
		        newPassword.append((int) (Math.random() * 10));
		    }
		    return newPassword.toString();
		}
	}
	 //member 비밀번호찾기 후 DB솔트처리.
	 
	 /*
	 
	 @RequestMapping(value="/forgot_id_end" ) public String
	 find2(@ModelAttribute Member member) throws MemberNotFoundException {
	 
	 memberService.pwModifyMember2(member);
	  
	 return "main";
	 */
		

