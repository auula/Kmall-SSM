package me.codegc.kmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * Create BY YooDing
 *
 * Des: 注册页面控制器
 *
 * Time:  2019年07月14日09:12:30
 *
 * <a href="https://github.com/YooDing/">Github<a>
 */
@RequestMapping("/")
@Controller
public class register {
		
		@GetMapping(value={"register.html","register"})
		public String registerView(){
			return "register";
		}
}
