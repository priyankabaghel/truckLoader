package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dao.BookDao;
import com.example.demo.dao.OwnerDao;
import com.example.demo.model.Book;
import com.example.demo.model.Credential;
import com.example.demo.model.Owner;
import com.example.demo.service.OwnerService;


@Controller
public class OwnerController {
	@Autowired
	private OwnerService service;
	@Autowired
	private OwnerDao dao;
    @Autowired
	private BookDao bdao;

	@RequestMapping("ownerRegister")
	public String owner() {

		return "ownerRegister";
	}

	@RequestMapping("checkBooking")
	public String check(HttpSession session) {

	  System.out.println( session.getId()); 
		  List<Book> booking = new ArrayList<>();
		booking = bdao.findAll();
		session.setAttribute("booking", booking);
									 
		  		 
		return "checkBooking";
	}

	@RequestMapping("/addOwner")
	public String register(Owner owner) {
		service.saveOwner(owner);
		System.out.println("owner data has been saved");
		return "ownerLogin";

	}

	@RequestMapping("ownerLogin")
	public String login() {
		return "ownerLogin";
	}

	@RequestMapping("ownerHome")
	public String ownerHome(@ModelAttribute("credential") Credential credential, ModelMap map) {

		Owner owner = dao.getOwner(credential.getName(), credential.getPassword());
		if (owner != null) {

			map.put("credential", credential);

			return "ownerHome";
		}
		map.addAttribute("failed", "Credentials does not matched");
		return "ownerLogin";

	}

	@RequestMapping("ownerList")
	public String ownerList(ModelMap map,@ModelAttribute("owner") Owner owner) {
		List<Owner> li = dao.findAll();
		
		map.put("li", li);
		return "ownerList";
	}
	
	
	@RequestMapping("updateOwner")
	public String ownerUpdate(@ModelAttribute("owner") Owner owner, ModelMap map) {
		
		Owner own = dao.getOne(owner.getId());
		map.put("owner", own);

		return "updateOwner";
	}

	@RequestMapping("editOwner")
	public String edit(@ModelAttribute("owner") Owner owner, BindingResult bindingResult, ModelMap map) {

		if (bindingResult.hasErrors()) {
			System.out.println("ui details not correct");
			return "updateEvent";
		}
		 dao.updateOwner(owner.getContact(), owner.getLocation(),owner.getName(),owner.getPassword(),  owner.getTruckNo(), owner.getTruckType());
		 map.put("successful",owner.getName()+ " event is successfully Updated");
		

		return "ownerHome";
	}
}

