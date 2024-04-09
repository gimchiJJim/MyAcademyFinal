package omlete.service;

import java.util.List;

import omlete.dto.Contents;

public interface ContentsService {
	void addContents(Contents contents);
	List<Contents> getContentsList();
	Contents getContents(int contentsNo);
	
	
	List<Contents> getContentsListByType(String contentsType);
	int getContentsCountByGenre(String contentsGenre);
	int getContentsCountByType(String contentsType);
	void modifyContents(Contents contents);
	void removeContents(int contentsNo);
	
}
