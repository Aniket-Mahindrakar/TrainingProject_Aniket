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

@WebServlet("/changePass")
public class ChangePasswordProcessController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String oldPass = req.getParameter("oldpass");
		String newPass = req.getParameter("newpass");
		String retypePass = req.getParameter("retypepass");

		HttpSession sess = req.getSession();
		Customer cust = (Customer) sess.getAttribute("CUSTOMERDATA");
		if (oldPass.equals(cust.getPass())) {
			req.setAttribute("oldPass", "Y");

			if (newPass.equals(retypePass)) {
				req.setAttribute("newPassEretypePass", "Y");
				cust.setPass(newPass);

				CustomerService cust_ser = new CustomerService();
				boolean status = cust_ser.updateCustomerPassword(cust);
				if (status) {
					req.setAttribute("success", "Y");
				} else {
					req.setAttribute("success", "N");
				}
			} else {
				req.setAttribute("newPassEretypePass", "N");
			}

			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		} else {
			req.setAttribute("oldPass", "N");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerAccount.jsp");
			rd.forward(req, resp);
		}
	}
}
