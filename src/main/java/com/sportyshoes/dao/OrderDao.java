package com.sportyshoes.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sportyshoes.entities.Saleorder;
import com.sportyshoes.repos.OrderRepository;

@Service
public class OrderDao {
	@Autowired
	OrderRepository orderRepo;
	
	public List<Saleorder> getAllOrders() {
		return orderRepo.findAll();
	}
}
