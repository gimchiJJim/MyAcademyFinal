package omlete.dao;

import omlete.dto.ReviewLike;

public interface ReviewLikeDAO {
	int insertReviewLike(ReviewLike reviewLike);
	int deleteReviewLike(int reviewLikeNo);
}
