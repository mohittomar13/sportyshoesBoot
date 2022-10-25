package com.sportyshoes.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sportyshoes.entities.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	
	Customer findByEmailAndPassword(String email, String Password);

}
