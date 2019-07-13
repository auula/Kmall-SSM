package me.codegc.kmall.controller;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * Create BY YooDing
 *
 * Des: description
 *
 * Time: 2019年07月13日20:24:59
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */
@Controller
@RequestMapping("/")
public class login {
	private static final Logger log = LogManager.getLogger(login.class);
	@GetMapping(value= {"login.html","login"})
	public String loginView() {
		log.info("login.jsp");
		return "login";
	}
}
