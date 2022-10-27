package com.sportyshoes.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.sportyshoes.dao.AdminDao;
import com.sportyshoes.entities.Admin;
import com.sportyshoes.pojos.Message;

@Controller
public class AdminController {
	@Autowired
	AdminDao adminDao;
	
	public ModelAndView loginAdmin(Admin admin, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("adminConsole.jsp");
		Admin adminObj = adminDao.findByEmailAndPassword(admin);
		if (adminObj != null) {
			request.getSession().setAttribute("currentAdmin", adminObj);
		} else {
			Message msg = new Message("Wrong email or password..!! :-(", "alert-danger", "alert");
			mv.setViewName("login.jsp");
			mv.addObject("msg", msg);
		}
		return mv;
	}
	
	
}
