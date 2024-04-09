package omlete.dao;

import java.util.List;

import omlete.dto.Badge;

public interface BadgeDAO {
	int insertBadge(Badge badge);
	List<Badge> selectBadgeList();
}
