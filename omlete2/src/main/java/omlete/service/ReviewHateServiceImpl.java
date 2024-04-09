package omlete.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.ReviewHateDAO;
import omlete.dto.ReviewHate;

@Service
@RequiredArgsConstructor
public class ReviewHateServiceImpl implements ReviewHateService {
	private final ReviewHateDAO reviewHateDAO;
	
	@Override
	public void addReviewHate(ReviewHate reviewHate) {
		reviewHateDAO.insertReviewHate(reviewHate);
	}

	@Override
	public void removeReviewHate(int reviewHateNo) {
		reviewHateDAO.deleteReviewHate(reviewHateNo);
	}

}
