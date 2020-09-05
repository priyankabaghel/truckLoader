package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.CustomerDao;
import com.example.demo.model.Customer;

@Service
public class CustomerService {
  @Autowired	
  private CustomerDao dao;
  
  public Customer saveOwner(Customer customer) {
      return dao.save(customer);
      
  }
 
}