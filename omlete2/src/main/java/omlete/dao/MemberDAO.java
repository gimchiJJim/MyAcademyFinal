package omlete.dao;

import omlete.dto.Member;

public interface MemberDAO {
	/* 회원가입 */
	int insertMember(Member member);
	Member selectMemberId(Member member);
	Member selectMemberNickname(String memberNickname);
	Member selectMemberEmail(String memberEmail);
	Member selectMember(String memberId);
	
	// 마이페이지
	Member selectMemberNo(int memberNo);
	int updateMemberInfo(Member member);
	int updateMemberResign(int memberNo);
	int updateMemberContents(Member member);


}