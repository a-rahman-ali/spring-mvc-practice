package springMVCSearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springMVCSearch.entities.Student;

@Controller
public class FormController {

	@RequestMapping("/complex_form")
	public String showForm() {
		System.out.println("complex_form view");
		return "complex_form";
	}

//	@RequestMapping(path = "/handleform", method = RequestMethod.POST)
//	public String formHandler(@RequestParam("name") String name, @RequestParam("id") Long id) {
//		System.out.println(name + " : " + id);
//		return "success";
//	}
	@RequestMapping(path = "/handleform", method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("student") Student student, BindingResult result) {

		if (result.hasErrors()) {
			return "complex_form";
		}

		System.out.println(student);
		return "success";
	}
}
