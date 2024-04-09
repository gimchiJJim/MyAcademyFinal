package omlete.service;

import java.util.List;

import omlete.dto.Contents;

public interface ApiService {
	List<String> getmid(int page); 
	List<Contents> getMovieList();
}
