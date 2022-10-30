package com.sportyshoes.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sportyshoes.entities.Product;
import com.sportyshoes.repos.ProductRepository;

@Controller
class NavigationalRedirects {
	@Autowired
	ProductController productController;
	
	/*
	 * I could have also used the productController as above but it will 
	 * require a lot of coding
	 */
	@Autowired
	ProductRepository prodRepo;
	
	@RequestMapping(value = { "", "/", "/home", "/default" })
	public ModelAndView redirectHome(HttpServletRequest request, HttpServletResponse response) {
		return new ModelAndView("index.jsp");
	}

	@RequestMapping("/men")
	public ModelAndView redirectMen(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("category.jsp");
		mv.addObject("productList", productController.getAllProductsAPI());
		mv.addObject("pageType", "men");
		return mv;
	}

	@RequestMapping("/women")
	public ModelAndView redirectWomen(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("category.jsp");
		mv.addObject("productList", productController.getAllProductsAPI());
		mv.addObject("pageType", "women");
		return mv;
	}

	@RequestMapping("/kids")
	public ModelAndView redirectKids(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("category.jsp");
		mv.addObject("productList", productController.getAllProductsAPI());
		mv.addObject("pageType", "kids");
		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView redirectLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("login.jsp");
		mv.addObject("pageType", "login");
		return mv;
	}
	

	@RequestMapping("/registration")
	public ModelAndView redirectRegiter(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("registration.jsp");
		mv.addObject("pageType", "registration");
		return mv;
	}

	@RequestMapping("/contact")
	public ModelAndView redirectContact(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("contact.jsp");
		mv.addObject("pageType", "contact");
		return mv;
	}

	@RequestMapping("/shop")
	public ModelAndView redirectShop(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("category.jsp");
		mv.addObject("productList", productController.getAllProductsAPI());
		mv.addObject("pageType", "shop");
		return mv;
	}

	@RequestMapping("/productDetails")
	public ModelAndView redirectProductDetails(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("singleproduct.jsp");
		mv.addObject("pageType", "productDetails");
		return mv;
	}

	@RequestMapping("/productCheckout")
	public ModelAndView redirectProductCheckout(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("checkout.jsp");
		mv.addObject("pageType", "productCheckout");
		return mv;
	}

	@RequestMapping("/cart")
	public ModelAndView redirectCart(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("cart.jsp");
		mv.addObject("pageType", "cart");
		return mv;
	}

	@RequestMapping("/confirmation")
	public ModelAndView redirectConfirmation(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("confirmation.jsp");
		mv.addObject("pageType", "confirmation");
		return mv;
	}
	
//	ADMIN PAGE MAPPINGS
	
	@RequestMapping("/admin_manageProducts")
	public ModelAndView redirectManageProducts(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("admin_manageProducts.jsp");
		mv.addObject("pageType", "confirmation");
		return mv;
	}
	@RequestMapping("/admin_viewCustomers")
	public ModelAndView redirectViewCustomers(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("admin_viewCustomers.jsp");
		mv.addObject("pageType", "confirmation");
		return mv;
	}
	@RequestMapping("/admin_viewSales")
	public ModelAndView redirectViewSales(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("admin_viewSales.jsp");
		mv.addObject("pageType", "confirmation");
		return mv;
	}
	
	@RequestMapping("/singleProduct")
	public ModelAndView redirectSingleProduct(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("singleproduct.jsp");
		int id = Integer.parseInt(request.getParameter("id"));
		Product product = prodRepo.getReferenceById(id);
		mv.addObject("product", product);
		return mv;
	}
	
	@RequestMapping("/checkout")
	public ModelAndView redirectCheckout(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("checkout.jsp");
		return mv;
	}
}
