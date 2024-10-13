package springMVCSearch;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping("/fileform")
	public String showFileUploadForm() {
		return "fileform";
	}

	@RequestMapping(path = "/uploadImage", method = RequestMethod.POST)
	public String fileUpload(@RequestParam("profile") CommonsMultipartFile file, HttpSession s, Model m) {
		System.out.println("file upload handler");
		System.out.println(file.getContentType());
		System.out.println(file.getSize() / 1024 + " kilo bytes");
		System.out.println(file.getClass().getName());
		System.out.println(file.getOriginalFilename());

		byte[] data = file.getBytes();
		// we've to save file to server
//		String path = s.getServletContext().getRealPath("/") + file.getOriginalFilename();
		// we've to save file to src/main/webapp/WEB-INF/resources/images
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources" + File.separator
				+ "images" + File.separator + file.getOriginalFilename();
		System.out.println(path);

		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			System.out.println("file uploaded");

			m.addAttribute("msg", "file uploaded successfully");
			m.addAttribute("filename", file.getOriginalFilename());

		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("file uploading error");
			m.addAttribute("msg", "file could not be uploaded");
		}

		return "filesuccess";
	}
}
