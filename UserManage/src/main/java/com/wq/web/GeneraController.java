package com.wq.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/")  
public class GeneraController {
	@RequestMapping(method=RequestMethod.GET)
	public String index() {
        return "index";
	}
}
