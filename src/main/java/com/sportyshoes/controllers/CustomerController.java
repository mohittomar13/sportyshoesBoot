package com.sportyshoes.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sportyshoes.dao.CustomerDao;
import com.sportyshoes.entities.Customer;
import com.sportyshoes.pojos.Message;

@RestController
@RequestMapping(value= {"", "/", "/edit", "/delete"})
public class CustomerController {
	@Autowired
	CustomerDao custDao;

	/*
	 * Below code not working and throwing exception so use @Autowired for now
	 */
//	CustomerDao custDao = SportyshoesApplication.getAppContext().getBean(CustomerDao.class);

	/*
	 * ????? What is the difference between @ModelAttribute and @RequestBody
	 * 
	 * >>>>> https://stackoverflow.com/questions/21824012/spring-modelattribute-vs-
	 * requestbody
	 */

	@PostMapping("/registerNewCustomer")
	/*
	 * @RequestBody will not work with form data but it will work for JSON object
	 * 
	 * @ModelAttribute will not work for JSON object but will work for form data as
	 * it gets request.getParameter() and then maps those to the object properties,
	 * but the name in the <form> must match the properties name of the Pojo.
	 * 
	 * 
	 * Also see https://www.baeldung.com/spring-request-response-body
	 */
	public ModelAndView registerCustomer(@ModelAttribute Customer customer) {
//	public ModelAndView registerCustomer(@RequestBody Customer customer) {
		ModelAndView mv = new ModelAndView("registration.jsp");
		Customer customerObj = null; 
		try {
			customerObj = custDao.saveCustomer(customer);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		if (customerObj != null) {
			Message msg = new Message("Registration Success..!! :-)", "alert-success", "alert");
			mv.addObject("msg", msg);
		} else {
			Message msg = new Message("Registration Failure..!! :-(", "alert-danger", "alert");
			mv.addObject("msg", msg);
		}
		return mv;
	}

	/*
	 * 
	 */
	public ModelAndView loginCustomer(Customer customer, HttpServletRequest request) {
//		public ModelAndView loginCustomer(@ModelAttribute Customer customer, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("index.jsp");
		Customer customerObj = custDao.findByEmailAndPassword(customer);
		if (customerObj != null) {
			request.getSession().setAttribute("currentCustomer", customerObj);
		} else {
			Message msg = new Message("Wrong email or password..!! :-(", "alert-danger", "alert");
			mv.setViewName("login.jsp");
			mv.addObject("msg", msg);
		}
		return mv;
	}

	/*
	 * 
	 */
	@RequestMapping("/allCustomers")
	public ModelAndView getAllCustomer(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin_viewCustomers.jsp");
		mv.addObject("allCustomers", getAllCustomerAPI());
		return mv;
	}

	@RequestMapping("/allCustomersAPI")
	public List<Customer> getAllCustomerAPI(){
		return custDao.getAllCustomers();
	}

	/*
	 * Actually @PutMapping should have been used here, but it is giving error
	 * of method not supported
	 */
	@GetMapping("{id}")
	public ModelAndView editCustomer(@PathVariable("id") int id) {
		System.out.println(id);
		ModelAndView mv = new ModelAndView("admin_editCustomer.jsp");
		Customer customer = custDao.getCustomerById(id);
		mv.addObject("customer", customer);
		return mv;
	}


	/*
	 * Actually @DeleteMapping should have been used here, but it is giving error
	 * of method not supported
	 * Not able to figure out how to use delete/{id} so created a new method that uses httpservletrequest
	
	@GetMapping("delete/{id}")
	public ModelAndView deleteCustomer(@PathVariable("id") int id, HttpServletRequest request) {
		Customer customer = custDao.getCustomerById(id);
		custDao.deleteCustomer(customer);
		return getAllCustomer();
	}
	
	 */
	
	@RequestMapping("/delete")
	public ModelAndView deleteCustomer(HttpServletRequest request) {
		Customer customer = custDao.getCustomerById(Integer.parseInt(request.getParameter("id")));
		custDao.deleteCustomer(customer);
		return getAllCustomer(request);
	}
	
	@PostMapping("/editCustomer")
	public ModelAndView updateCustomer(@ModelAttribute Customer customer, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("admin_editCustomer.jsp");
		Customer customerObj = null;
		try {
			customerObj = custDao.saveCustomer(customer);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		if (customerObj != null) {
			Message msg = new Message("Update Success..!! :-)", "alert-success", "alert");
			mv.addObject("msg", msg);
			request.setAttribute("affectedId", customerObj.getId());
		} else {
			Message msg = new Message("Update Failure..!! :-(", "alert-danger", "alert");
			mv.addObject("msg", msg);
		}
		return mv;
	}

}
