package com.sportyshoes.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String name;
	
	@Column(unique = true)
	private String email;
	
	private String password;
	
	private String address;
	
	/*
	 * अगर हम mappedBy="customer" नहीं use करेंगे तो बेकार में Customer Table के अंदर ही 
	 * इस customer के सारे orders repeatedly show होने लगेंगे अलग-अलग row में जोकी बेकार है।
	 * 
	 * mappedBy="customer" use करने से सिर्फ Order table के अंदर ही ये repetitions होंगी ना की
	 * दोनो tables में ie. Orders and Customer Table में
	 * 
	 * mappedBy="customer" use करने से हम Hibernate को बता रहे हैं की इसकी mapping ना करे क्यों की
	 * इसकी mapping हो चुकी है।
	 */
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "customer")
	private List<Saleorder> saleorders = new ArrayList<>();
	
}

























