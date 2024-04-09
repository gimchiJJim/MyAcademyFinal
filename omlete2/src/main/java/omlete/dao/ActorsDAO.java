package omlete.dao;

import omlete.dto.Actors;
import java.util.List;

public interface ActorsDAO {
	 //actors를 추가
	 int insertActors(Actors actors);	
	 //모든 actors 불러오기
	 List<Actors> selectActorsList(); 
	//배우id로 해당 배우정보 불러오기
	 Actors selectActors(int actorNo);
}
