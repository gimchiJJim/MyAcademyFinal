package omlete.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import omlete.dto.Member;
import omlete.mapper.MemberMapper;

@Repository
@RequiredArgsConstructor
public class MemberDAOImpl implements MemberDAO {
	public final SqlSession sqlSession;
	
	@Override
	public int insertMember(Member member) {
		System.out.println("insertMember = "+member);
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}
	
	@Override
	public Member selectMemberId(Member member) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberId(member);
	}
	
	@Override
	public Member selectMember(String memberId) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(memberId);
	}
	
	@Override
	public Member selectMemberNo(int memberNo) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberNo(memberNo);
	}

	@Override
	public int updateMemberInfo(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberInfo(member);
	}

	@Override
	public int updateMemberResign(int memberNo) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberResign(memberNo);
	}

	@Override
	public int updateMemberContents(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMemberContents(member);
	}

	@Override
	public Member selectMemberNickname(String memberNickname) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberNickname(memberNickname);
	}

	@Override
	public Member selectMemberEmail(String memberEmail) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberEmail(memberEmail);
	}

}
