package omlete.mapper;

import omlete.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	Member selectMemberId(Member member);
	Member selectMemberNickname(String memberNickname);
	Member selectMember(String memberId);
	Member selectMemberEmail(String memberEmail);
	
	//마이페이지
	Member selectMemberNo(int memberNo);
	int updateMemberInfo(Member member);
	int updateMemberResign(int memberNo);
	int updateMemberContents(Member member);
}
