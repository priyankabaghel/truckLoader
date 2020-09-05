package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dao.CustomerDao;
import com.example.demo.dao.OwnerDao;
import com.example.demo.model.Credentials;
import com.example.demo.model.Customer;
import com.example.demo.model.Owner;
import com.example.demo.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerDao org;
	@Autowired
	private OwnerDao dao;
    @Autowired
	private CustomerService service;
	 @RequestMapping("addCustomer")
	 public String customer(Customer customer) {
		service.saveOwner(customer);
		 return "customerLogin"; 
		 }
	 
	
	@RequestMapping("showServices")
	public String showService(HttpSession session,@ModelAttribute("credentials") Credentials credentials,ModelMap map) {

		Customer cust= org.getCustomer(credentials.getUserName(), credentials.getPassword());
		if (cust != null) {
			session.setAttribute("id", credentials);
			map.put("credentials", credentials);
			
		
		List<Owner> owner = new ArrayList<>();
		owner = dao.findAll();
		
		session.setAttribute("owner", owner);
		return "showServices";
		}
		map.addAttribute("failed", "Credentials does not matched");
		return "customerLogin";
	}

	@RequestMapping("customerRegister")
	public String customerReg() {
	
		return "customerRegister";
	}
	@RequestMapping("customerLogin")
	public String customerLogin() {
	
		return "customerLogin";
	}
	@RequestMapping("confirmation")
	public String confirm() {
	
		return "confirmBooking";
	}
	
}
