package springMVC.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/first")
public class HomeController {

	@RequestMapping(path = { "/home", "/" }, method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("this is home url");

		model.addAttribute("name", "Chand");
		model.addAttribute("id", 1324);

		List<String> friends = new ArrayList<>();
		friends.add("ankit");
		friends.add("raju");
		friends.add("joshi");
		friends.add("uttam");

		model.addAttribute("frnds", friends);

		return "index";
	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("this is about url");
		return "about";
	}

	@RequestMapping("/services")
	public String services() {
		System.out.println("this is services url");
		return "services";
	}

//	@RequestMapping("/help")
//	public String help() {
//		System.out.println("this is help url");
//		return "help";
//	}
	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("this is help url");
		// creating ModelAndView Object
		ModelAndView modelAndView = new ModelAndView();

		// setting the data
		modelAndView.addObject("role", "Technical Support Associate");
		modelAndView.setViewName("help");

		// marks
		List<Integer> marks = new ArrayList<>();
		marks.add(112);
		marks.add(96);
		marks.add(116);
		marks.add(324);
		modelAndView.addObject("marks", marks);

		return modelAndView;
	}
}
