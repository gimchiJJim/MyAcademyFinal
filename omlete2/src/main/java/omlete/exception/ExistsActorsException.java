package omlete.exception;

import lombok.Getter;
import omlete.dto.Actors;

 
public class ExistsActorsException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	@Getter
	private Actors actors;
	
	public ExistsActorsException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsActorsException(String message, Actors actors) {
		super(message);
		this.actors=actors;
	}
}