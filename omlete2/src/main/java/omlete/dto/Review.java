package omlete.dto;

import lombok.Builder;
import lombok.Data;

/*
review_date는 sysdate 입니다.

create table review(review_no number primary key, review_kind number, review_member number, review_content varchar2(300), review_date date
    , review_up number, review_down number, review_work number constraint review_work_fk references contents(contents_no), review_spoiler number
    , review_star number);
    
create sequence review_seq;
*/

@Data
@Builder
public class Review {
	private int reviewNo;
	private int reviewKind;
	private int reviewMember;
	private String reviewContent;
	private String reviewDate;
	private int reviewUp;
	private int reviewDown;
	private int reviewWork;
	private int reviewSpoiler;
	private int reviewStar;
}
