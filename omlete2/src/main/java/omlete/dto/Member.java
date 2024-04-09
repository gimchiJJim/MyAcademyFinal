package omlete.dto;

import lombok.Data;

@Data
public class Member {
	private int memberNo;
	private String memberId;
	private String memberPasswd;
	private String memberName;
	private String memberPhone;
	private String memberEmail;
	private int memberLevel;
	private int memberBadge;
	private int memberStatus;
	private int memberPoint;
	private String memberFavorite1;
	private String memberFavorite2;
	private String memberFavorite3;
	private int memberReport;
	private String memberNickname;
}
