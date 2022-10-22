package com.sportyshoes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestingDELME {
	@RequestMapping("/test")
	public ModelAndView test(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(request.getParameter("test"));
		return new ModelAndView("index.jsp");
	}
}
