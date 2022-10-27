package com.sportyshoes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class SportyshoesApplication {
	private static ConfigurableApplicationContext appContext;
	public static void main(String[] args) {
		/*
		 * We can directly start the app using
		 * SpringApplication.run(SportyshoesApplication.class, args);
		 *
		 * 
		 * However I modified the code below, for quick-debugging
		 */

		appContext = SpringApplication.run(SportyshoesApplication.class, args);
		

//		CustomerRepository customerRepo = appContext.getBean(CustomerRepository.class);
//
//		Customer customer = new Customer();
//		customer.setName("rohit");
//		customer.setEmail("rohit@gmail.com");
//		customer.setPassword("abc123");
//
//		customerRepo.save(customer);

		/*
		 * For debugging and testing
		 */
//		List<Customer> allCustomer = customerRepo.getAllCustomer();
//		allCustomer.forEach(customer2 -> System.out.println(customer2));
		System.out.println("**DONE**");
	}
	
	public static ConfigurableApplicationContext getAppContext() {
		return appContext;
	}
}
