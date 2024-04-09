package omlete.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Actors;
import omlete.mapper.ActorsMapper;

@Repository
@RequiredArgsConstructor
public class ActorsDAOImpl implements ActorsDAO{
	private final SqlSession sqlSession;
	
	@Override
	public int insertActors(Actors actors) {
		return sqlSession.getMapper(ActorsMapper.class).insertActors(actors);
		
	}
	@Override
	public List<Actors> selectActorsList(){
		return sqlSession.getMapper(ActorsMapper.class).selectActorsList();
	}
	@Override
	public Actors selectActors(int actorNo) {
		return sqlSession.getMapper(ActorsMapper.class).selectActors(actorNo);
	}

}
