package omlete.dto;

import lombok.Data;

/*
create table wish(
wish_num NUMBER PRIMARY KEY,
wish_client_num NUMBER CONSTRAINT wish_client_num_FK REFERENCES member(member_no),
wish_work_num NUMBER CONSTRAINT wish_work_num_FK REFERENCES contents(contents_no));
*/

@Data
public class Wish {
	private int wishNo; // 찜 번호
	private int wishClientNo; // 회원 번호
	private String wishContentsNo; // 작품 번호
}
