package omlete.mapper;

import java.util.List;

import omlete.dto.Badge;

public interface BadgeMapper {
	int insertBadge(Badge badge);
	List<Badge> selectBadgeList();
}
