package com.sportyshoes.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sportyshoes.entities.Admin;
import com.sportyshoes.repos.AdminRepository;

@Service
public class AdminDao {
	@Autowired
	AdminRepository adminRepo;
	
	public Admin findByEmailAndPassword(Admin customer) {
		return adminRepo.findByEmailAndPassword(customer.getEmail(), customer.getPassword());
	}
}
