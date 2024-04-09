package omlete.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.ReviewLikeDAO;
import omlete.dto.ReviewLike;

@Service
@RequiredArgsConstructor
public class ReviewLikeServiceImpl implements ReviewLikeService {
	private final ReviewLikeDAO reviewLikeDAO;
	
	@Override
	public void addReviewLike(ReviewLike reviewLike) {
		reviewLikeDAO.insertReviewLike(reviewLike);
	}

	@Override
	public void removeReviewLike(int reviewLikeNo) {
		reviewLikeDAO.deleteReviewLike(reviewLikeNo);
	}

}
