package omlete.dto;

import lombok.Builder;
import lombok.Data;

/*
create table review_like(review_like_no number primary key, review_like_member number constraint review_like_member_fk references member(member_no)
    , review_like_apply_no number constraint review_like_apply_no_fk references review(review_no));
*/

@Data
@Builder
public class ReviewLike {
	private int reviewLikeNo;
	private int reviewLikeMember;
	private int reviewLikeApplyNo;
}
