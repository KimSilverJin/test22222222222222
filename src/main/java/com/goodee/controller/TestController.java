package com.goodee.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.goodee.vo.DataVO1;

@Controller
public class TestController {
	
	@GetMapping("/input-data")
	public String inputData(DataVO1 vo) {
		return "input-data";
	}
	
	@PostMapping("/input-pro")
	public String inputPro(@Validated DataVO1 vo, BindingResult result) {
		if(result.hasErrors()) {
			return "input-data";
		}
		return "input-pro";
	}
}







