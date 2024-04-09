package omlete.service;

import java.util.List;

import omlete.dto.Badge;

public interface BadgeService {
	void addBadge(Badge badge);
	List<Badge> getBadgeList();
}
