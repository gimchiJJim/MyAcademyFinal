package omlete.mapper;

import java.util.List;

import omlete.dto.Contents;

public interface ContentsMapper {
	 //contents를 추가
	 int insertContents(Contents contents);	
	 //모든 contents 불러오기
	 List<Contents> selectContentsList();
	 //작품id로 해당 작품정보 불러오기
	 Contents selectContents(int contentsNo);
	 
	 //타입별 출력
	 List<Contents> selectContentsListByType(String contentsType);
	 
	 //장르별 개수 출력
	 int selectContentsCountByGenre(String contentsGenre);
	 
	 //타입별 개수 출력
	 int selectContentsCountByType(String contentsType);
	 
	 //작품 수정
	 int updateContents(Contents contents);
	 
	 //작품 삭제
	 int deleteContents(int contentsNo);
}
