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

@WebServlet("/report")
public class ReportException extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sess = req.getSession();
		String exception = (String) sess.getAttribute("EXCEPTION");

		CustomerService custSer = new CustomerService();
		custSer.reportException(exception);
		RequestDispatcher rd = req.getRequestDispatcher("HomePage.jsp");
		try {
			rd.forward(req, resp);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} catch (ServletException se) {
			se.printStackTrace();
		}
	}
}
