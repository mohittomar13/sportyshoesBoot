package com.sportyshoes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sportyshoes.dao.OrderDao;

@Controller
public class OrderController {
	@Autowired
	OrderDao orderDao;
	
	@RequestMapping("/viewSales")
	public ModelAndView getAllOrders() {
		ModelAndView mv = new ModelAndView("admin_viewSales.jsp");
		mv.addObject("orderList", orderDao.getAllOrders());
		return mv;
	}
}
