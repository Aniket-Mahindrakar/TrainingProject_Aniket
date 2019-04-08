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
		String name = req.getParameter("reg_name");

		String[] splitName = name.split(" ");
		String fname = splitName[0];
		String lname = splitName[1];
		String email = req.getParameter("reg_email");
		String pass = req.getParameter("reg_pwd");

		Customer cust = new Customer();
		cust.setFname(fname);
		cust.setLname(lname);
		cust.setEmail(email);
		cust.setPass(pass);

		CustomerService custSer = new CustomerService();
		boolean status = custSer.registerCustomerDetails(cust);
		try {
			if (status) {
				req.setAttribute("stat", "Y");

				RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");

				rd.forward(req, resp);
			} else {
				req.setAttribute("stat", "N");

				RequestDispatcher rd = req.getRequestDispatcher("SignInSignUpForms.jsp");

				rd.forward(req, resp);
			}
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} catch (ServletException se) {
			se.printStackTrace();
		}
	}
}
