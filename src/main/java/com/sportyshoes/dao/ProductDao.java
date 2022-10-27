package com.sportyshoes.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sportyshoes.entities.Product;
import com.sportyshoes.repos.ProductRepository;

@Service
public class ProductDao {
	@Autowired
	private ProductRepository prodRepo;

	public List<Product> getAllProducts() {
		return prodRepo.findAll();
	}

	public Product getProductById(int id) {
		return prodRepo.getReferenceById(id);
	}
}
