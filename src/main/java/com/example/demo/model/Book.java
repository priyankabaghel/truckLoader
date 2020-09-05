package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Book {
	@Override
	public String toString() {
		return "Book [id=" + id + ", customerName=" + customerName + ", truckNo=" + truckNo + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((customerName == null) ? 0 : customerName.hashCode());
		result = prime * result + id;
		result = prime * result + truckNo;
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
		Book other = (Book) obj;
		if (customerName == null) {
			if (other.customerName != null)
				return false;
		} else if (!customerName.equals(other.customerName))
			return false;
		if (id != other.id)
			return false;
		if (truckNo != other.truckNo)
			return false;
		return true;
	}

	@Id
	@GeneratedValue
	private int id;
	private String customerName;
	private int truckNo;

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public int getTruckNo() {
		return truckNo;
	}

	public void setTruckNo(int truckNo) {
		this.truckNo = truckNo;
	}

}
