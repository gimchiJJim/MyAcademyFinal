package omlete.dto;

import lombok.Data;

/*

이름            널?       유형            
------------- -------- ------------- 
BADGE_NO      NOT NULL NUMBER        
BADGE_NAME             VARCHAR2(100) 
BADGE_IMAGE            VARCHAR2(100) 
BADGE_CONTENT          VARCHAR2(300) 

*/

@Data
public class Badge {
	private int badgeNo;
	private String badgeName;
	private String badgeImage;
	private String badgeContent;
}
