package omlete.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import lombok.RequiredArgsConstructor;
import omlete.service.NoticeService;


@Controller
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {
	private final WebApplicationContext context;
	@Autowired
    private final NoticeService noticeService;
	
	/*
	 * //공지사항
	 * 
	 * @RequestMapping(value = "/notice_view",method = RequestMethod.GET) public
	 * String noticelist() { return "notice/notice_view"; }
	 */
	
	 @RequestMapping("/noticeList")
	    public String noticeList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "notice/notice_view";
	    }
	 //이벤트
	 @RequestMapping("/eventList")
	    public String eventList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
	        Map<String, Object> map = noticeService.getNoticeList(pageNum);

	        model.addAttribute("pager", map.get("pager"));
	        model.addAttribute("noticeList", map.get("noticeList"));

	        return "notice/event_view";
	    }
	
	
	
	
	
	
	//공지사항상세
	@RequestMapping(value = "/notice",method = RequestMethod.GET)
	public String notice() {
		return "notice/notice";
	}
	//이벤트
	@RequestMapping(value = "/event_view",method = RequestMethod.GET)
	public String eventlist() {
		return "notice/event_view";
	}
	//이벤트상세
	@RequestMapping(value = "/event",method = RequestMethod.GET)
	public String event() {
		return "notice/event";
	}
	
	//문의사항
	@RequestMapping(value = "/moon_view",method = RequestMethod.GET)
	public String moonlist() {
		return "moon/moon_view";
	}
	//1:1문의
	@RequestMapping(value = "/inquiry",method = RequestMethod.GET)
	public String inquiry() {
		return "moon/inquiry";
	}
	//1:1상세
	@RequestMapping(value = "/answer",method = RequestMethod.GET)
	public String answer() {
		return "moon/answer";
	}	
	
	/*
	 * //moon전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	 * 
	 * @RequestMapping(value = "member_moonList", method = RequestMethod.GET)
	 * 
	 * @ResponseBody public Map<String, Object> faqlist(@RequestParam(defaultValue =
	 * "1") int pageNum, @RequestParam int fmstatus, @RequestParam int fstatus) {
	 * //int totalFaqList=boardService.getFaqCount(); int totalFaqList=boar int
	 * pageSize=15; int blockSize=5;
	 * 
	 * Pager pager=new Pager(pageNum, totalFaqList, pageSize, blockSize);
	 * 
	 * Map<String, Object> pageMap=new HashMap<String, Object>();
	 * pageMap.put("startRow", pager.getStartRow()); pageMap.put("endRow",
	 * pager.getEndRow()); pageMap.put("fMstatus", fmstatus); pageMap.put("fStatus",
	 * fstatus);
	 * 
	 * Map<String, Object> resultMap=new HashMap<String, Object>(); if (fmstatus==1
	 * && fstatus==1) { List<Faq> faqList=boardService.getstatusFaqList(pageMap);
	 * resultMap.put("faqList", faqList); } else if(fmstatus==0 && fstatus==1) {
	 * List<Faq> faqList=boardService.getstatusFaqList(pageMap);
	 * resultMap.put("faqList", faqList); }
	 * 
	 * resultMap.put("pager", pager); return resultMap; }
	 */
	
	
/*	//notice/event전체 리스트 출력 시 페이징 처리를 위해 Json형식의 text로 Map객체 전달
	@RequestMapping(value = "member_noticeList", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> noticelist(@RequestParam(defaultValue = "1") int pageNum, @RequestParam int nmstatus,  @RequestParam int nstatus) {
		int totalNoticeList=boardService.getNoticeCount();
		int pageSize=10;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalNoticeList, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		pageMap.put("nmstatus", nmstatus);
		pageMap.put("nstatus", nstatus);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();

		if (nmstatus==1 && nstatus==1) {
			List<Notice> noticeList=boardService.getNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		} else if (nmstatus==0 && nstatus==1) {
			List<Notice> noticeList=boardService.getNoticeList(pageMap);
			resultMap.put("noticeList", noticeList);			
		}
		resultMap.put("pager", pager);
		return resultMap;
	}*/
	

	
/*
 * //글번호를 전달받아 해당 글번호의 게시글을 검색하여 출력
 * 
 * @RequestMapping(value ="member_notice/view", method = RequestMethod.GET)
 * public String noticeView(@RequestParam int nno, Model model) throws
 * BoardNotFoundException { model.addAttribute("noticeview",
 * boardService.getNotice(nno)); return "notice/notice_view"; }
 */
}
