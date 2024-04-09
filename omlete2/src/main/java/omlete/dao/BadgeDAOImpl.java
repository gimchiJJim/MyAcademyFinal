package omlete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Badge;

@Repository
@RequiredArgsConstructor
public class BadgeDAOImpl implements BadgeDAO {
	private final SqlSession sqlSession;
	
	@Override
	public int insertBadge(Badge badge) {
		return sqlSession.getMapper(BadgeDAO.class).insertBadge(badge);
	}

	@Override
	public List<Badge> selectBadgeList() {
		return sqlSession.getMapper(BadgeDAO.class).selectBadgeList();
	}

}
