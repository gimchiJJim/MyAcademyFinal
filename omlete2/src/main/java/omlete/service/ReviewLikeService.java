package omlete.service;

import omlete.dto.ReviewLike;

public interface ReviewLikeService {
	void addReviewLike(ReviewLike reviewLike);
	void removeReviewLike(int reviewLikeNo);
}
