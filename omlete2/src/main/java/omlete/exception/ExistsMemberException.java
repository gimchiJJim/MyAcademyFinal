package omlete.exception;


import lombok.Getter;
import lombok.Setter;
import omlete.dto.Member;

@Getter
@Setter
public class ExistsMemberException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	private Member member;
	
	public ExistsMemberException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsMemberException(String message, Member member) {
		super(message);
		this.member=member;
	}
}