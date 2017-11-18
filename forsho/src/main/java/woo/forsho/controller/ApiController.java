package woo.forsho.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import woo.forsho.dao.ContentsDao;
import woo.forsho.dao.UserTableDao;
import woo.forsho.model.Contents;
import woo.forsho.model.Usertable;

@RestController
public class ApiController {
	
	@Autowired
	ContentsDao contentsDao;
	
	@GetMapping("/data")
	public List<Contents> index() {
		List<Contents> list = contentsDao.findAll();
		return list;
	}
}
