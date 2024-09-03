package com.springboot.web;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class newConotroller {
	@Autowired
	StudentService studentService;	
@GetMapping("/")
	public String anu()
	{
		return "anu";
	}
@PostMapping("/xyz")
public String xyz(@ModelAttribute Student student)
{
	studentService.insert(student);
	return "redirect:/display";
}
@GetMapping("/display")
public String display(Model m)
{
	List<Student> s1 = studentService.displayAll();
	m.addAttribute("data", s1);
	return "display";
}
@GetMapping("/deletedata")
public String deletedata(@RequestParam int id) // request parameter
{
	studentService.delete_d(id);
	return "redirect:/display";
}

@GetMapping("/editdata")
public String editdata(@RequestParam int id, Model m)
{
	Student S = studentService.getsingledata(id);
	m.addAttribute("data", S);
	return "editdata";
}
@GetMapping("/addstudent")
public String addStudent() {
    return "addstudent";
}

}
