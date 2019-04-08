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

@WebServlet("/login")
public class LoginProcessController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sess = req.getSession();
		String name = (String) sess.getAttribute("NAME");
		if (name != null) {
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("HomePage.jsp");
			rd.forward(req, resp);
		}
		

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("log_in_email");
		String pass = req.getParameter("log_in_pwd");

		Customer cust = new Customer();
		cust.setEmail(email);
		cust.setPass(pass);

		CustomerService custSer = new CustomerService();
		boolean status = custSer.loginCustomer(cust);
		try {
			if (status) {
				HttpSession ses = req.getSession();
				ses.setAttribute("NAME", cust.getFname() + " " + cust.getLname());
				ses.setAttribute("CUSTOMERDATA", cust);
				req.setAttribute("log", "Y");

				RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
				rd.forward(req, resp);

			} else {
				req.setAttribute("log", "N");
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
