package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.ReviewHate;
import omlete.mapper.ReviewHateMapper;

@Repository
@RequiredArgsConstructor
public class ReviewHateDAOImpl implements ReviewHateDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertReviewHate(ReviewHate reviewHate) {
		return sqlSession.getMapper(ReviewHateMapper.class).insertReviewHate(reviewHate);
	}

	@Override
	public int deleteReviewHate(int reviewHateNo) {
		return sqlSession.getMapper(ReviewHateMapper.class).deleteReviewHate(reviewHateNo);
	}

}
