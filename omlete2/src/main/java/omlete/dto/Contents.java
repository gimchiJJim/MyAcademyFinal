package omlete.dto;

import lombok.Data;

//회원정보를 저장하기 위한 클래스 - VO 클래스 >> DTO 클래스
//=> DAO 클래스에서 정보를 전달할 목적으로 작성된 클래스
//=> 페이지 요청시 전달값을 저장할 목적으로 사용 - 전달값의 이름과 필드의 이름이 같도록 작성
@Data
public class Contents {
	private int contentsNo;					//작품번호
	private String contentsType;			//작품 타입
	private String contentsOname;			//원제목(영어)
	private String contentsTname;			//작품 제목(한국어)
	private String contentsTrailer;			//예고편/트레일러
	private String contentsPoster;			//포스터
	private String contentsPhoto1;			//스틸컷
	private String contentsPhoto2;			//스틸컷
	private String contentsPhoto3;			//스틸컷
	private String contentsStaff;			//작가
	private String contentsOverview;		//내용
	private String contentsRating;			//연령 등급
	private String contentsGenre;			//장르
	private String contentsNetwork;			//방송사
	private String contentsNetworkLogo;		//방송사 로고
	private String contentsCountries;		//제작 국가
	private String contentsDirector;		//감독
	private String contentsStartdate;		//개봉일
	private int contentsAvgstar;			//평균별점
	private String contentsEnddate;			//종영일
	private int contentsEpisodes;			//총 에필로그 수
	private int contentsSeasons;			//총 시즌 수
	private int contentsRuntime;			//상영시간
	private String contentsTagline;			//내용정리
}
