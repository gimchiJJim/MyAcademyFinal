package omlete.dto;

import lombok.Data;

/*
create table point(
point_status number,
point_date date,
point_extent number,
point_member number CONSTRAINT point_member_FK REFERENCES member(member_no),
point_content VARCHAR2(100));
*/

@Data
public class Point {
	private int pointStatus; // 포인트 증감 상태
	private String pointDate; // 포인트 증감 날짜
	private int pointExtent; // 포인트 수(몇 포인트)
	private int pointMember; // 포인트 회원
	private String pointContent; // 포인트 사용 내역
}
