package springMVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RedirectController {

	@RequestMapping("/one")
	public String one() {
		System.out.println("this is handler one");
		return "redirect:/two";
	}

	@RequestMapping("/two")
	public String two() {
		System.out.println("this is handler two");
		return "contact-form";
	}
}
