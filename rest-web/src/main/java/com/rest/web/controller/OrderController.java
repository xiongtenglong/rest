package com.rest.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {

	@RequestMapping("/create")
	public String toCreateOrderPage(Model model){
		
		return "/center/orderCreate";
	}
}
