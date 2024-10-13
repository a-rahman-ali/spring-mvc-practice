package springMVCSearch;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class MyExceptionHandler {
	@ExceptionHandler(value = NullPointerException.class)
	public String exceptionHandlerNull() {
		return "null_page";
	}

}
