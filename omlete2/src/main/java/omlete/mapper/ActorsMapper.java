package omlete.mapper;

import java.util.List;

import omlete.dto.Actors;

public interface ActorsMapper {
	int insertActors(Actors actors);
	List<Actors> selectActorsList();
	Actors selectActors(int actorNo);
}
