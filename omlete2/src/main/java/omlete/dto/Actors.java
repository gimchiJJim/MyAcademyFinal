package omlete.dto;

import lombok.Data;

@Data
public class Actors {
	private int actorNo;			//배우 번호
	private String actorName;		//배우 이름
	private String actorOname;		//배우 원이름(영어)
	private String actorImg;		//배우 프로필 이미지
}
