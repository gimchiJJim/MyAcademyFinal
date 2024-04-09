package omlete.dto;

import lombok.Data;

@Data
public class ActorContents {
	private int actorContentsId;			//작품번호
	private String actorContentsType;		//작품 종류
	private int actorId;					//출연자 id
}
