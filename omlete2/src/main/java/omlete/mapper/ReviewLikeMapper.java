package omlete.mapper;

import omlete.dto.ReviewLike;

public interface ReviewLikeMapper {
	int insertReviewLike(ReviewLike reviewLike);
	int deleteReviewLike(int reviewLikeNo);
}
