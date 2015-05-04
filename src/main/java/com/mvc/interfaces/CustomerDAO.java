package com.mvc.interfaces;

import com.mvc.model.Customer;

public interface CustomerDAO {
	public void insert(Customer customer);
	public Customer findByCustomerId(int custId);
}
