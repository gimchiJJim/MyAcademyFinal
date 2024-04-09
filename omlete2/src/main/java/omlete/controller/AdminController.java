package omlete.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import omlete.dto.Contents;
import omlete.dto.Member;
import omlete.dto.Review;
import omlete.service.ContentsService;
import omlete.service.MemberService;
import omlete.service.ReviewService;

@Controller
@RequestMapping("/admin")
//@RequiredArgsConstructor
public class AdminController {
    
	//private MemberService memberService;
    private ContentsService contentsService;
    private WebApplicationContext context;
    //private ReviewService reviewService;
    
    // 관리자 메인 페이지 이동
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String adminMain(HttpSession session) {
    	/*
    	Integer memberStatus = (Integer)session.getAttribute("memberStatus");
        if(memberStatus == null || memberStatus != 9) {
            return "exception.BadRequestException";
        }
        */
        return "index";
    }
    /*
    //작품 관리
    @RequestMapping(value = "/contents", method = RequestMethod.GET)
    public String ContentsList(@RequestParam(value = "contentsType") String contentsType, Model m) {
    	if(contentsType.equals("%EC%98%81%ED%99%94") || contentsType.equals("영화")) {
    	m.addAttribute("movieList", contentsService.getContentsCountByType("영화"));
    	return "contents/movie";
    	} else {
    		m.addAttribute("tvList", contentsService.getContentsCountByType("TV"));
    	return "contents/tv";
    	}
    }
    */
    
    // 작품 관리(영화)
    @RequestMapping(value = "/contents/movie", method = RequestMethod.GET)
    public String movieList(Model m) {
        m.addAttribute("movieList", contentsService.getContentsListByType("영화"));
        return "contents/movie";
    }
    
    // 작품 관리(TV)
    @RequestMapping(value = "/contents/tv", method = RequestMethod.GET)
    public String tvList(Model m) {
        m.addAttribute("tvList", contentsService.getContentsListByType("TV"));
        return "contents/tv";
    }
    
    // 작품 추가
    @RequestMapping(value = "/contents_add", method = RequestMethod.POST)
    public String contentsAdd(@ModelAttribute Contents contents, @RequestParam List<MultipartFile> uploadFileList,  Model m ) throws IllegalStateException, IOException {
    	contentsService.addContents(contents);
    	String uploadDirectory=context.getServletContext().getRealPath("/resources/images/upload");
    	
    	List<String> contentsImageList=new ArrayList<String>();
    	
    	for(MultipartFile multipartFile : uploadFileList) {
    		String contentsImageName=UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
    		File file=new File(uploadDirectory, contentsImageName);
    		multipartFile.transferTo(file);
        
    		contentsImageList.add(uploadDirectory);
    	}
    	m.addAttribute("contents", contents);
    	m.addAttribute("contentsImageList", contentsImageList);
    	
    	String contentsType = contents.getContentsType();
    	if(contentsType.equals("영화")) {
        return "redirect:/admin/contents/movie";
    		} else {
    			return "redirect:/admin/contents/tv";
    		}
    	}
    
    // 작품 수정
    @RequestMapping(value = "/contents_modify", method = RequestMethod.POST)
    public String contentsModify(@ModelAttribute Contents contents, @RequestParam List<MultipartFile> uploadFileList, Model m ) throws IllegalStateException, IOException {
        contentsService.modifyContents(contents);
        String uploadDirectory=context.getServletContext().getRealPath("/resources/images/upload");
    	
    	List<String> contentsImageList=new ArrayList<String>();
    	
    	for(MultipartFile multipartFile : uploadFileList) {
    		String contentsImageName=UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
    		File file=new File(uploadDirectory, contentsImageName);
    		multipartFile.transferTo(file);
        
    		contentsImageList.add(uploadDirectory);
    	}
    	m.addAttribute("contents", contents);
    	m.addAttribute("contentsImageList", contentsImageList);
    	
    	String contentsType = contents.getContentsType();
    	if(contentsType.equals("영화")) {
        return "redirect:/admin/contents/movie";
    		} else {
    			return "redirect:/admin/contents/tv";
    		}
    	}
    
    // 작품 삭제
    @RequestMapping(value = "/contents_remove/{contentsNo}", method = RequestMethod.DELETE)
    public String contentsRemove(@PathVariable int contentsNo) {
        contentsService.removeContents(contentsNo);
        return "redirect:/admin/contents/movies";
    }
    
    /*
    // 회원 관리
    @RequestMapping(value = "/member", method = RequestMethod.GET)
    public String memberList(Model m) {
        m.addAttribute("memberList", memberService.getMemberList());
        return "member";
    }
    
    // 회원 상태 변경
    @RequestMapping(value = "/member_modify", method = RequestMethod.POST)
    public String modifyMemberStatus(@RequestParam int memberStatus, HttpSession session) {
        memberService.modifyMemberStatus(memberStatus);
        return "redirect:/admin/member";
    }
    
    // 공지사항으로 이동
    @RequestMapping(value = "/notice ", method = RequestMethod.GET)
    public String notice(HttpSession session) {
        return "notice";
    }
    
    // 공지사항 글쓰기
    @RequestMapping(value = "/notice_write", method = RequestMethod.GET)
    public String writeNotice() {
        return "notice_write";
    }
    
    // 공지사항 글쓰기(예외)
    @RequestMapping(value = "/notice_write", method = RequestMethod.POST)
    public String writeNoticeException(@RequestParam int memberStatus) {
        memberService.getMemberStatus(memberStatus);
        return "redirect:/login/login";
    }
    
    //이벤트로 이동
    @RequestMapping(value = "/event", method = RequestMethod.GET)
    public String event(HttpSession session) {
    	return "event";
    }
    
    //이벤트 글쓰기
    @RequestMapping(value = "/event_write", method = RequestMethod.POST)
    public String writeEvent() {
    	return "event_write";
    }
    
    //이벤트 글쓰기(예외)
    @RequestMapping(value = "/event_write", method = RequestMethod.POST)
    public String writeEventException(@ModelAttribute Member memberStatus) {
    	memberService.getMemberStatus(memberStatus);
    	return "redirect:/login/login";
    }
    
    //1대1 문의로 이동
    @RequestMapping(value = "/moon_view", method = RequestMethod.GET)
    public String inquiry(HttpSession session) {
    	return "moon_view";
    }
    
    //1대1 문의 답변하기
    @RequestMapping(value = "/answer", method = RequestMethod.POST)
    public String writeAnswer() {
    	return "answer";
    }
    
    //1대 1문의 답변하기(예외)
    @RequestMapping(value = "/answer", method = RequestMethod.POST)
    public String writeAnswerException(@ModelAttribute Member memberStatus) {
    	memberService.getMemberStatus(memberStatus);
    	return "redirect:/login/login";
    }
    
    //리뷰 관리
    @RequestMapping(value = "/review", method = RequestMethod.GET)
    public String reviewList(Model m) {
        m.addAttribute("reviewList", reviewService.getAllReviewList());
        return "review";        	
    }
    
    //신고된 리뷰 관리
    @RequestMapping(value = "/review_reported", method = RequestMethod.GET)
    public String reportedReviewList(Model m) {
    	m.addAttribute("reportedReviewList", reviewService.getReportedReviewList());
    	return "review_reported";
    }
    
    //리뷰 삭제
    @RequestMapping(value = "/review_remove", method = RequestMethod.DELETE)
    public String removeReview(@RequestParam int reviewNo) {
    	reviewService.removeReview(reviewNo);
    	return "review";
    }
    
    // 메인 페이지 이동
    @RequestMapping(value = "/main_body", method = RequestMethod.GET)
    public String main(HttpSession session) {
        Integer memberStatus = (Integer)session.getAttribute("memberStatus");

        return "main/main_body";
    }
    
    // 로그아웃
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/main/main_body";
    }
    
*/
}