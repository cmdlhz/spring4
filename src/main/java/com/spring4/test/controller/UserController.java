package com.spring4.test.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.spring4.test.dao.UserDAO;
import com.spring4.test.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class UserController {

	@Resource
	private UserDAO udao; // @Resource = @Autowired
	
	@GetMapping("/users")
	public String getUserList(Model m, @ModelAttribute UserVO user) {
		log.debug("param : {}", user);
		System.out.println(user);
		m.addAttribute("users", udao.getUserList(user));
		return "user/list";
	}
}
