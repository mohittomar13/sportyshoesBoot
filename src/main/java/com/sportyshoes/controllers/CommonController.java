package com.sportyshoes.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sportyshoes.entities.Admin;
import com.sportyshoes.entities.Customer;
import com.sportyshoes.pojos.Message;

@Controller
public class CommonController {
	@Autowired
	CustomerController custController;

	@Autowired
	AdminController adminController;

	@PostMapping("/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		String userType = request.getParameter("selector");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(userType + " " + email + " " + password);
		if (userType.equals("customer")) {
			Customer customer = new Customer();
			customer.setEmail(email);
			customer.setPassword(password);
			request.getSession().setAttribute("userType", userType);
			return custController.loginCustomer(customer, request);
		} else {
			Admin admin = new Admin();
			admin.setEmail(email);
			admin.setPassword(password);
			request.getSession().setAttribute("userType", userType);
			return adminController.loginAdmin(admin, request);
		}
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("login.jsp");
		request.getSession().removeAttribute("currentCustomer");
		request.getSession().removeAttribute("currentAdmin");
		Message msg = new Message("Logged out successfully :-)", "alert-success", "alert");
		mv.addObject("msg", msg);
		return mv;
	}
}
