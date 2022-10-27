package com.sportyshoes.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sportyshoes.entities.Saleorder;

@Repository
public interface OrderRepository extends JpaRepository<Saleorder, Integer>{

}
