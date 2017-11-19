package woo.forsho.controller;

import java.util.List;

import org.json.JSONArray;
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
		int index = 0;
		List<Usertable> userTable = userTableDao.findAll();
		
		for (int i=0; i < userTable.size(); i++) {
			if (userTable.get(i).getId().equals(payload.getId())) {
				if (userTable.get(i).getPassword().equals(payload.getPassword())) {
					result = 3;
					index = i;
					model.addAttribute("name", userTable.get(i).getName());
					break;
				} else {
					result = 2;
				}
			} else {
				result = 1;
			}
		}
		
		if (result == 3) {
			model.addAttribute("usertable", userTable.get(index));
			return "/main";
		} else if (result == 2) {
			model.addAttribute("result", "비밀번호가 틀렸습니다");
			return "/index";		
		} else if (result == 1) {
			model.addAttribute("result", "아이디가 없습니다");
			return "/index";
		}

		return "error";
	}
	
	@PostMapping("/addaccount")
	public String addaccount(Usertable payload, Model model) {
		return "index";
	}
	
	@GetMapping("/index")	
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
