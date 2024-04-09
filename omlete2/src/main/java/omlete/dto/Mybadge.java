package omlete.dto;

import lombok.Data;

/*
 
이름                  널? 유형     
------------------- -- ------ 
MYBADEGE_NO            NUMBER 
MYBADEGE_MEMBER_NUM    NUMBER 
BADGE_STATUS           NUMBER 

 */

@Data
public class Mybadge {
	private int mybadgeNo;
	private int mybadgeMemberNo;
	private int mybadgeStatus;
}
