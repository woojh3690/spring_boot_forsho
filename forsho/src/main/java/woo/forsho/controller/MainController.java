package woo.forsho.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import woo.forsho.dao.ContentsDao;
import woo.forsho.dao.UserTableDao;
import woo.forsho.model.Contents;
import woo.forsho.model.Usertable;

@Controller
public class MainController {
	
	@Autowired
	private UserTableDao userTableDao;
	
	@PostMapping("/login")
	public String login(Usertable payload, Model model) {
		int result = 0;
		List<Usertable> userTable;
		userTable = userTableDao.findAll();
		
		for (int i=0; i < userTable.size(); i++) {
			if (userTable.get(i).getId().equals(payload.getId())) {
				if (userTable.get(i).getPassword().equals(payload.getPassword())) {
					result = 3;
					model.addAttribute("name", userTable.get(i).getName());
					break;
				} else {
					result = 2;
				}
			} else {
				result = 1;
			}
		} 
		
		return "main";
	}
	
	@PostMapping("/addaccount")
	public String addaccount(Usertable payload, Model model) {
		return "index";
	}
	
	@GetMapping("/")	
	public String index(Model model) {
		return "index";
	}
	
	@GetMapping("/main")	
	public String main(Model model) {
		return "main";
	}
	
	@GetMapping("/find")	
	public String find(Model model) {
		return "find";
	}
	
	@GetMapping("/signup")	
	public String signup(Model model) {
		return "signup";
	}
	
}
