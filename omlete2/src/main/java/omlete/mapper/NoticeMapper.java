package omlete.mapper;

import java.util.List;
import java.util.Map;

import omlete.dto.Notice;

public interface NoticeMapper {
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int deleteNotice(int noticeNo);
	int selectNoticeCount();
	Notice selectNotice(int noticeNo);
	List<Notice> selectNoticeList(Map<String, Object> map);
}
