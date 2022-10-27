package com.sportyshoes.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sportyshoes.dao.ProductDao;
import com.sportyshoes.entities.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductDao prodDao;

	@RequestMapping("/manageProducts")
	public ModelAndView getAllProducts() {
		ModelAndView mv = new ModelAndView("admin_manageProducts.jsp");
		mv.addObject("allProducts", prodDao.getAllProducts());
		return mv;
	}
	
	public List<Product> getAllProductsAPI() {
		return prodDao.getAllProducts();
	}

	@GetMapping("{id}")
	public ModelAndView getProductById(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("admin_editProduct.jsp");
		mv.addObject("product", prodDao.getProductById(id));
		return mv;
	}
}
