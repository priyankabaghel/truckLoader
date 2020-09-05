package com.example.demo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Customer;
import com.example.demo.model.Owner;

@Transactional
@Repository
public interface OwnerDao extends JpaRepository<Owner, Integer> {

	@Override
	List<Owner> findAll();
	
	
	
	@Query("select s from Owner s where truckNo=?1")
	Owner getOwner(int truckNo);



	@Query("select s from Owner s where name=?1 and password=?2")
	Owner getOwner(String name,String password);

	
	 @Modifying
	 @Query("update Owner u  set u.contact=?1, u.location=?2,u.password=?4, u.truckNo=?5,u.truckType=?6 where u.name=?3")
	 void updateOwner(int contact,String loaction,String name,String password,int truckNo,String truckType);
	
	 
}