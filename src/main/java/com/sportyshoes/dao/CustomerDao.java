package com.sportyshoes.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sportyshoes.entities.Customer;
import com.sportyshoes.repos.CustomerRepository;

@Service
public class CustomerDao {
	/*
	 * We can also use @Autowired here
	 */
//	CustomerRepository custRepo = SportyshoesApplication.getAppContext().getBean(CustomerRepository.class);
	
	@Autowired
	CustomerRepository custRepo;
	
	public Customer saveCustomer(Customer customer) {
		return custRepo.save(customer);
	}
	
	public Customer findByEmailAndPassword(Customer customer) {
		return custRepo.findByEmailAndPassword(customer.getEmail(), customer.getPassword());
	}
	
}
