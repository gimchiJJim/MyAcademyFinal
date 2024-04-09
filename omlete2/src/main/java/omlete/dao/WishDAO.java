package omlete.dao;

import omlete.dto.Wish;

public interface WishDAO {
	int insertWishContents(Wish wish); // 찜하기
	int deleteWishContents(int wishNo); // 찜삭제
}
