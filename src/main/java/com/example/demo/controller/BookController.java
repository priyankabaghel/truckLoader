package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dao.BookDao;
import com.example.demo.dao.CustomerDao;
import com.example.demo.dao.OwnerDao;
import com.example.demo.model.Book;
import com.example.demo.model.Customer;
import com.example.demo.model.Owner;

@Controller
public class BookController {
	@Autowired
	private OwnerDao dao;
	@Autowired
	private CustomerDao dao1;
	@Autowired
	private BookDao bookdao;

	@RequestMapping("bookTruck")
	public String bookTruck(ModelMap map,@ModelAttribute("book") Book book) {

		List<Owner> li = dao.findAll();

		map.put("li", li);

		return "bookTruck";
	}

	@RequestMapping("book")
	public String book(@ModelAttribute("book") Book book, HttpSession session, ModelMap map) {

		String userName = book.getCustomerName();
		/*
		 * System.out.println(userName); System.out.println(book.getTruckNo());
		 */
		Owner owner = dao.getOwner(book.getTruckNo());
		Customer cust = dao1.getCustomers(userName);

		if (owner != null && cust != null) {
			bookdao.save(book);
			return "confirmBooking";
		}

		map.addAttribute("failed", "Credentials does not matched");
		return "bookTruck";

	}
}
