package com.eic.aws.poc.aws.docker.poc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(ModelMap model, @RequestParam String name){
		model.put("name", name);
		return "welcome";
	}
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String showIndexPage(){
		return "index";
	}
}
