package omlete.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.dao.BadgeDAO;
import omlete.dto.Badge;

@Service
@RequiredArgsConstructor
public class BadgeServiceImpl implements BadgeService {
	private final BadgeDAO badgeDAO;
	@Override
	public void addBadge(Badge badge) {
		badgeDAO.insertBadge(badge);
	}

	@Override
	public List<Badge> getBadgeList() {
		return badgeDAO.selectBadgeList();
	}

}
