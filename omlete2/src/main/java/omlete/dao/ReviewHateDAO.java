package omlete.dao;

import omlete.dto.ReviewHate;

public interface ReviewHateDAO {
	int insertReviewHate(ReviewHate reviewHate);
	int deleteReviewHate(int reviewHateNo);
}
