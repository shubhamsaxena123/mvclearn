package com.mvc.app;

import javax.sql.DataSource;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.mvc.interfaces.CustomerDAO;
import com.mvc.model.Customer;

public class JdbcCorporateEventDao extends JdbcDaoSupport implements CustomerDAO {

//    private JdbcTemplate jdbcTemplate;

	public void insert(Customer customer){
		String sql = "INSERT INTO CUSTOMER " +
				"(CUST_ID, NAME, AGE) VALUES (?, ?, ?)";
	 
			getJdbcTemplate().update(sql, new Object[] { customer.getCustId(),
					customer.getName(),customer.getAge() });	
	};
	
	
	public Customer findByCustomerId(int custId){
		Customer customer = new Customer(1, "shubham", 23);
		return customer;
	};	   

    // JDBC-backed implementations of the methods on the CorporateEventDao follow...
}
