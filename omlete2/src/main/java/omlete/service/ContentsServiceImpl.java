package omlete.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import omlete.dao.ContentsDAO;
import omlete.dto.Contents;
import omlete.exception.ContentsNotFoundException;
import omlete.exception.ExistsContentsException;
import omlete.dto.Contents;


@Service
@RequiredArgsConstructor
public class ContentsServiceImpl implements ContentsService{
	private final ContentsDAO contentsDAO;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void addContents(Contents contents) {
		if(contentsDAO.selectContents(contents.getContentsNo()) != null) {
			throw new ExistsContentsException("이미 존재하는 작품입니다.", contents);
		}
		
		contentsDAO.insertContents(contents);
	}

	@Override
	public List<Contents> getContentsList() {
		return contentsDAO.selectContentsList();
	}

	@Override
	public Contents getContents(int contentsNo) {
		Contents contents = contentsDAO.selectContents(contentsNo);
		if(contents == null) {
			throw new ContentsNotFoundException("해당 작품이 존재하지 않습니다.");
		}
		
		return contents;
	}

	@Override
	public List<Contents> getContentsListByType(String contentsType) {
		return contentsDAO.selectContentsListByType(contentsType);
	}

	@Override
	public int getContentsCountByGenre(String contentsGenre) {
		int contentsCount = contentsDAO.selectContentsCountByGenre(contentsGenre);
		return contentsCount;
	}

	@Override
	public int getContentsCountByType(String contentsType) {
		int contentsCount = contentsDAO.selectContentsCountByGenre(contentsType);
		return contentsCount;
	}
	
	@Override
	public void modifyContents(Contents contents) {
		contentsDAO.updateContents(contents);		
	}

	@Override
	public void removeContents(int contentsNo) {
		contentsDAO.deleteContents(contentsNo);
		
	}
	
	
}
