package com.tadigital.ecommerce.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/register")
public class RegistrationProcessController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = (String) req.getParameter("reg_name");

		String[] split_name = name.split(" ");
		String fname = split_name[0];
		String lname = split_name[1];
		String email = (String) req.getParameter("reg_email");
		String pass = (String) req.getParameter("reg_pwd");

		Customer cust = new Customer();
		cust.setFname(fname);
		cust.setLname(lname);
		cust.setEmail(email);
		cust.setPass(pass);

		CustomerService cust_ser = new CustomerService();
		boolean status = cust_ser.registerCustomerDetails(cust);
		if (status) {
			req.setAttribute("stat", "Y");

			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");

			rd.forward(req, resp);
		} else {
			req.setAttribute("stat", "N");

			RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");

			rd.forward(req, resp);
		}
	}

}
