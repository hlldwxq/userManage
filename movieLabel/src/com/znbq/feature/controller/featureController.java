package com.znbq.feature.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/feature"})
public class featureController {

	@RequestMapping(value={"/feature",""})
	public String index()
	{
		return "feature/feature";
	}
	
}
