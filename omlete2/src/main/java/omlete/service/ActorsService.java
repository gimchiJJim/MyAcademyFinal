package omlete.service;

import java.util.List;

import omlete.dto.Actors;

public interface ActorsService {
	void addActors(Actors actors);
	List<Actors> getActorsList();	
	Actors getActors(int actorNo);
}
