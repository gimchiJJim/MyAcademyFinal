package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.ReviewLike;
import omlete.mapper.ReviewLikeMapper;

@Repository
@RequiredArgsConstructor
public class ReviewLikeDAOImpl implements ReviewLikeDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertReviewLike(ReviewLike reviewLike) {
		return sqlSession.getMapper(ReviewLikeMapper.class).insertReviewLike(reviewLike);
	}

	@Override
	public int deleteReviewLike(int reviewLikeNo) {
		return sqlSession.getMapper(ReviewLikeMapper.class).deleteReviewLike(reviewLikeNo);
	}

}
