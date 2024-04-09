package omlete.dto;

import lombok.Data;

@Data
public class Season {
	private int seasonContentsNo;		//작품 번호
	private int seasonNo;				//시즌 넘버링
	private String seasonName;			//시즌 이름
	private int seasonEpisode;			//에필로그 개수
	private String seasonOverview;		//시즌 내용
	private String seasonPoster;		//시즌 포스터
	private int seasonNum;				//시즌 번호
} 
