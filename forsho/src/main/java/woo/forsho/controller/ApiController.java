package woo.forsho.controller;

import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import woo.forsho.dao.ContentsDao;
import woo.forsho.dao.UserTableDao;
import woo.forsho.model.Contents;
import woo.forsho.model.Usertable;

@RestController
public class ApiController {
	
	@Autowired
	private ContentsDao contentsDao;
	
//	@GetMapping("/data")
//	public List<Contents> index() {
//		//List<Contents> list = contentsDao.findAll(new Sort(Sort.Direction.DESC, "number"));
//		List<Contents> list = contentsDao.findContensByUser(userTable.get(index).getKey());
//		return list;
//	}
	
//	@PostMapping("/data")
//	public List<Contents> login(Usertable payload, Model model) {
//		List<Contents> list = contentsDao.findContensByUser(payload.getKey());
//		return list;
//	}
	
	@RequestMapping(value = "/data", produces="text/plain;charset=UTF-8")
	public void getGeneric(@RequestBody Map<String, Object> payload) throws Exception {
		System.out.println(String.valueOf(payload.get("key")));
		System.out.println(String.valueOf(payload.get("search")));
    }
}
