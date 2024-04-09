package omlete.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import omlete.exception.BadRequestException;
import omlete.exception.ExistsMemberException;
import omlete.exception.LoginAuthFailException;
import omlete.exception.MemberNotFoundException;


@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(value = BadRequestException.class)
	public String badRequestExceptionHandler() {
		return "login/error";
	}
	
	@ExceptionHandler(ExistsMemberException.class)
	public String existsUserinfoExceptionHandler(ExistsMemberException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("member", exception.getMember());
		return "login/register";	
	}
	
	@ExceptionHandler(LoginAuthFailException.class)
	public String loginAuthFailExceptionHandler(LoginAuthFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("memberId", exception.getId());
		return "login/login";	
	}
	
	@ExceptionHandler(MemberNotFoundException.class)
	public String userinfoNotFoundExceptionHandler() {
		return "login/error";	
	}
	
	/*
	// 제일 나중에 - 에러 확인이 불가능
	@ExceptionHandler(Exception.class)
	public String exceptionHandler() {
		return "userinfo/user_error";	
	}
	*/
}
