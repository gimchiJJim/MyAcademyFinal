package omlete.dto;

import lombok.Builder;
import lombok.Data;

/*
create table review_hate(review_hate_no number primary key, review_hate_member number constraint review_hate_member_fk references member(member_no)
    , review_hate_apply_no number constraint review_hate_apply_no_fk references review(review_no));
*/

@Data
@Builder
public class ReviewHate {
	private int reviewHateNo;
	private int reviewHateMember;
	private int reviewHateApplyNo;
}
