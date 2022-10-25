package com.sportyshoes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sportyshoes.dao.CustomerDao;
import com.sportyshoes.entities.Customer;
import com.sportyshoes.pojos.Message;

@RestController
public class CustomerController {
	@Autowired
	CustomerDao custDao;

	/*
	 * ????? What is the difference between @ModelAttribute and @RequestBody
	 * 
	 * >>>>> https://stackoverflow.com/questions/21824012/spring-modelattribute-vs-requestbody
	 */
	@PostMapping("/registerNewCustomer")
	public ModelAndView registerCustomer(@ModelAttribute Customer customer) {
		ModelAndView mv = new ModelAndView("registration.jsp");
		if (custDao.saveCustomer(customer) != null) {
			Message msg = new Message("Registration Success..!! :-)", "alert-success", "alert");
			mv.addObject("msg", msg);
		} else {
			Message msg = new Message("Registration Failure..!! :-(", "alert-danger", "alert");
			mv.addObject("msg", msg);
		}
		return mv;
	}

	@PostMapping("/dummyRegisterNewCustomer")
	public ModelAndView dummyRegisterCustomer(@RequestBody Customer customer) {
		return new ModelAndView();
	}
}
