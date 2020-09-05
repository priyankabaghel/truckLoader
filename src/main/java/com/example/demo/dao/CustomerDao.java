package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Customer;

public interface CustomerDao extends JpaRepository<Customer,Integer>{
	@Query("select s from Customer s where userName=?1 and password=?2")
	Customer getCustomer(String userName,String password);
	
	
	
	@Query("select s from Customer s where userName=?1")
	Customer getCustomers(String userName);
}
