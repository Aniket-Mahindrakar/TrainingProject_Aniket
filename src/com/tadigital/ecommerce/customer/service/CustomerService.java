package com.tadigital.ecommerce.customer.service;

import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	CustomerDao cust_dao = new CustomerDao();

	public boolean registerCustomerDetails(Customer customer) {
		Boolean status = cust_dao.insertCustomer(customer);

		return status;
	}

	public boolean loginCustomer(Customer customer) {
		Boolean status = cust_dao.selectCustomerByEmailAndPass(customer);

		return status;
	}

	public boolean updateCustomerPassword(Customer customer) {
		Boolean status = cust_dao.updateCustomerPwd(customer);

		return status;
	}

	public boolean updateCustomerDetails(Customer customer, String x) {
		Boolean status = cust_dao.updateCustomerDetails(customer, x);

		return status;
	}
}
