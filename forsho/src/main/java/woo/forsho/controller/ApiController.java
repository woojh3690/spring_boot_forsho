package woo.forsho.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import woo.forsho.dao.ContentsDao;
import woo.forsho.model.Contents;

@RestController
public class ApiController {
	
	@Autowired
	ContentsDao contentsDao;
	
	@GetMapping("/data")
	public List<Contents> index() {
		List<Contents> list = contentsDao.findAll(new Sort(Sort.Direction.DESC, "number"));
		return list;
	}
}
