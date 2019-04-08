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
		Customer custDup = new Customer(cust);
		System.out.print(custDup);

		custDup.setFname(fname);
		custDup.setLname(lname);
		custDup.setGender(gender);
		custDup.setAddr(addr);
		custDup.setCity(city);
		custDup.setZip(zip);
		custDup.setState(state);
		custDup.setCountry(country);
		custDup.setContact(contact);
		custDup.setEmail(email);

		System.out.print(custDup);

		CustomerService custSer = new CustomerService();
		boolean status = custSer.updateCustomerDetails(custDup, cust.getEmail());
		if (status) {
			req.setAttribute("updated", "Y");
		} else {
			req.setAttribute("updated", "N");
		}
		RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
		try {
			rd.forward(req, resp);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} catch (ServletException se) {
			se.printStackTrace();
		}
	}
}
