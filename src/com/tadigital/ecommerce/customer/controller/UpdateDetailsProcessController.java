package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/updateDetails")
public class UpdateDetailsProcessController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String gender = req.getParameter("gender");
		String addr = req.getParameter("address");
		String city = req.getParameter("city");
		String zip = req.getParameter("zip");
		String state = req.getParameter("state");
		String country = req.getParameter("country");
		String contact = req.getParameter("contact");
		String email = req.getParameter("email");

		HttpSession sess = req.getSession();
		Customer cust = (Customer) sess.getAttribute("CUSTOMERDATA");
		Customer cust_dup = new Customer(cust);

		cust_dup.setFname(fname);
		cust_dup.setLname(lname);
		cust_dup.setGender(gender);
		cust_dup.setAddr(addr);
		cust_dup.setCity(city);
		cust_dup.setZip(zip);
		cust_dup.setState(state);
		cust_dup.setCountry(country);
		cust_dup.setContact(contact);
		cust_dup.setEmail(email);

		CustomerService cust_ser = new CustomerService();
		boolean status = cust_ser.updateCustomerDetails(cust_dup, cust.getEmail());
		if (status) {
			req.setAttribute("updated", "Y");
		} else {
			req.setAttribute("updated", "N");
		}
		RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
		rd.forward(req, resp);
	}
}
