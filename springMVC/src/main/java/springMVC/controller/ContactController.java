package springMVC.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springMVC.model.User;
import springMVC.service.UserService;

@Controller
public class ContactController {

	@Autowired
	private UserService userService;

	@RequestMapping("/contact")
	public String showForm(Model m) {
		m.addAttribute("Header", "Contact Form Header");
		System.out.println("Creating Form");
		return "contact-form";
	}

	// ModelAttribute
	@RequestMapping(path = "/processform", method = RequestMethod.POST)
	public String handleForm(@ModelAttribute User user, Model model) {

		System.out.println(user);

		if (user.getUserName().isBlank()) {
			return "redirect:/contact-form";
		}

		int createdId = this.userService.createUser(user);
		model.addAttribute("msg", "User created with ID : " + createdId);

//		model.addAttribute("user", user);

		return "success";
	}

	// RequestParam
//	@RequestMapping(path = "/processform", method = RequestMethod.POST)
//	public String handleForm(
//			@RequestParam(name = "userEmail", required = true) String userEmail, 
//			@RequestParam("userName") String userName,
//			@RequestParam("note") String note, 
//			Model model
//			) {
//		
//		User user = new User();
//		
//		user.setUserEmail(userEmail);
//		user.setUserName(userName);
//		user.setNote(note);
//		
//		System.out.println(user);
////		System.out.println(userEmail + " - " + userName + " - " + note);
//
////		 processing the data to database or any operation on the data can be done here
//
////		model.addAttribute("userName", userName);
////		model.addAttribute("userEmail", userEmail);
////		model.addAttribute("note", note);
//
//		model.addAttribute("user", user);
//		
//		return "success";
//	}
}
