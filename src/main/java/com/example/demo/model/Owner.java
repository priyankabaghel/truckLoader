package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Owner {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String location;
	private int contact;
	private int truckNo;
	private String password;
    private String truckType;
	public String getTruckType() {
		return truckType;
	}

	public void setTruckType(String truckType) {
		this.truckType = truckType;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contact) {
		this.contact = contact;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getTruckNo() {
		return truckNo;
	}

	public void setTruckNo(int truckNo) {
		this.truckNo = truckNo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (contact ^ (contact >>> 32));
		result = prime * result + id;
		result = prime * result + ((location == null) ? 0 : location.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + truckNo;
		result = prime * result + ((truckType == null) ? 0 : truckType.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Owner other = (Owner) obj;
		if (contact != other.contact)
			return false;
		if (id != other.id)
			return false;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (truckNo != other.truckNo)
			return false;
		if (truckType == null) {
			if (other.truckType != null)
				return false;
		} else if (!truckType.equals(other.truckType))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Owner [id=" + id + ", name=" + name + ", location=" + location + ", contact=" + contact + ", truckNo="
				+ truckNo + ", password=" + password + ", truckType=" + truckType + "]";
	}

	

	
}
