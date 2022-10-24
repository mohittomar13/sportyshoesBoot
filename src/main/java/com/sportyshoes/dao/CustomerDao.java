package com.sportyshoes.dao;

import com.sportyshoes.SportyshoesApplication;
import com.sportyshoes.repos.CustomerRepository;

public class CustomerDao {
	/*
	 * We can also use @Autowired here
	 */
	CustomerRepository custRepo = SportyshoesApplication.getAppContext().getBean(CustomerRepository.class);
}
