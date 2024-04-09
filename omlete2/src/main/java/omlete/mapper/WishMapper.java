package omlete.mapper;

import omlete.dto.Wish;

public interface WishMapper {
	int insertWishContents(Wish wish); // 찜하기
	int deleteWishContents(int wishNo); // 찜삭제
}
