package omlete.mapper;

import java.util.List;

import omlete.dto.Season;

public interface SeasonMapper {
	int insertSeason(Season season);
	 List<Season> selectSeasonList();
}
