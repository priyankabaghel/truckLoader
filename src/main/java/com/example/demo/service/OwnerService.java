package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.OwnerDao;
import com.example.demo.model.Owner;

@Service
public class OwnerService {
  @Autowired	
  private OwnerDao dao;
  
  public Owner saveOwner(Owner owner) {
      return dao.save(owner);
      
  }
 
}
