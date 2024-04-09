package omlete.dto;

import lombok.Data;

/* create table moon(moon_no number primary key,
moon_member number CONSTRAINT moon_member_fk REFERENCES member(member_no),
moon_title varchar2(100),
moon_content varchar2(300),
moon_status number,
moon_re varchar2(300),
moon_date date);

*/

@Data
public class Moon {
	private int moonNo;
	private int moonMember;
	private String moontitle;
	private String moonContent;
	private int moonStatus;
	private String moonRe;
	private String moonDate;
	private String memberNickname;
}
