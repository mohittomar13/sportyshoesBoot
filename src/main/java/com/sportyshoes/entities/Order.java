//package com.sportyshoes.entities;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.ToString;
//
//@Entity
//@Data
//@NoArgsConstructor
//@AllArgsConstructor
//@ToString
//public class Order {
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	private int id;
//	
//	@ManyToOne(cascade = CascadeType.ALL)
//	private Customer customer;
//	
//	@ManyToMany(cascade = CascadeType.ALL)
//	private List<Product> products;
//}


//********************************************************************************


//package com.sportyshoes.entities;
//
//import java.util.List;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.ManyToMany;
//import javax.persistence.ManyToOne;
//
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.ToString;
//
//@Entity
//@Data
//@NoArgsConstructor
//@AllArgsConstructor
//@ToString
//public class Order {
//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
//	private int id;
//	
//	@ManyToOne(cascade = CascadeType.ALL)
//	private Customer customer;
//	
//	@ManyToMany(cascade = CascadeType.ALL)
//	private List<Product> products;
//}
