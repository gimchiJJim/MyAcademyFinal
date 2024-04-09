package omlete.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.NoticeDAO;
import omlete.dto.Notice;
import omlete.exception.BoardNotFoundException;
import omlete.util.Pager;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	//private final MoonDAO moonDAO;
	private final NoticeDAO noticeDAO;
	
	//moon
	//추가
	/*
	 * @Transactional
	 * 
	 * @Override public void addMoon(Moon moon) { moonDAO.insertFaq(moon); } //수정
	 * 
	 * @Transactional
	 * 
	 * @Override public void modifyMoon(Moon moon) throws BoardNotFoundException {
	 * if(moonDAO.selectFaq(moon.getFNo())==null) { throw new
	 * BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); }
	 * 
	 * moonDAO.updateFaq(moon); } //삭제
	 * 
	 * @Transactional
	 * 
	 * @Override public void removeFaq(int fNo) throws BoardNotFoundException {
	 * if(faqDAO.selectFaq(fNo)==null) { throw new
	 * BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); } faqDAO.deleteFaq(fNo); } //전체
	 * 갯수
	 * 
	 * @Override public int getFaqCount() { return faqDAO.selectFaqCount(); } //목록
	 * 반환
	 * 
	 * @Override public Faq getFaq(int fNo) throws BoardNotFoundException {
	 * if(faqDAO.selectFaq(fNo)==null) { throw new
	 * BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); } return faqDAO.selectFaq(fNo);
	 * }
	 */
	
	
	/*
	 * //notice //추가
	 * 
	 * @Transactional
	 * 
	 * @Override public void addNotice(Notice notice) {
	 * noticeDAO.insertNotice(notice); } //수정
	 * 
	 * @Transactional
	 * 
	 * @Override public void modifyNotice(Notice notice) throws
	 * BoardNotFoundException { if(noticeDAO.selectNotice(notice.getNoticeNo())
	 * ==null) { throw new BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); }
	 * noticeDAO.updateNotice(notice); } //삭제
	 * 
	 * @Transactional
	 * 
	 * @Override public void removeNotice(int noticeNo) throws
	 * BoardNotFoundException { if(noticeDAO.selectNotice(noticeNo)==null) { throw
	 * new BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); }
	 * noticeDAO.deleteNotice(noticeNo); } //갯수
	 * 
	 * @Override 
	 * public int getNoticeCount() { 
	 * return noticeDAO.selectNoticeCount();
	 * }
	 * 
	 * //검색?
	 * 
	 * @Override 
	 * public Notice getNotice(int noticeNo) throws BoardNotFoundException
	 * { if(noticeDAO.selectNotice(noticeNo)==null) { throw new
	 * BoardNotFoundException("해당 게시글을 찾을 수 없습니다."); } return
	 * noticeDAO.selectNotice(noticeNo); }
	 */
	
	//리스트 없으면 예외처리
	@Override
    public Notice getNotice(int noticeNo) {
        Notice notice = noticeDAO.selectNotice(noticeNo);
        if (notice == null) {
            throw new RuntimeException("게시글을 찾을 수 없습니다.");
        }
        return notice;
    }

    @Override
    public Map<String, Object> getNoticeList(int pageNum) {
        int totalSize = noticeDAO.selectNoticeCount();
        int pageSize = 5;
        int blockSize = 5;

        Pager pager = new Pager(pageNum, totalSize, pageSize, blockSize);

        Map<String, Object> pageMap = new HashMap<String, Object>();
        pageMap.put("startRow", pager.getStartRow());
        pageMap.put("endRow", pager.getEndRow());
        List<Notice> noticeList = noticeDAO.selectNoticeList(pageMap);

        // 요청 처리 메소드에게 반환될 처리결과가 저장된 Map 객체 생성
        // => 요청 처리 메소드는 반환받은 Map 객체를 뷰에게 제공하여 출력 처리
        Map<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("pager", pager);
        resultMap.put("noticeList", noticeList);

        return resultMap;
    }


	@Override
	public void addNotice(Notice notice) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void modifyNotice(Notice notice) throws BoardNotFoundException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void removeNotice(int nNo) throws BoardNotFoundException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public int getNoticeCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	/*
	 * @Override public List<Faq> getstatusFaqList(Map<String, Object> map) { return
	 * faqDAO.selectstatusFaqList(map); }
	 */


	/*
	 * @Override public List<Faq> getorstatusFaqList(Map<String, Object> map) {
	 * return faqDAO.selectorstatusFaqList(map); }
	 */









	
	
}
