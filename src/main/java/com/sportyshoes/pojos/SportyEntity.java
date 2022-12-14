package com.sportyshoes.pojos;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

//@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class SportyEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private String name;

	@Column(unique = true)
	private String email;

	private String password;

	private String address;
}
