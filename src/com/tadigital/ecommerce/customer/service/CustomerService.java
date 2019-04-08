package com.tadigital.ecommerce.customer.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	CustomerDao cust_dao = new CustomerDao();

	public boolean registerCustomerDetails(Customer customer) {
		Boolean status = cust_dao.insertCustomer(customer);
		if (status) {
			String name = customer.getFname() + " " + customer.getLname();
			String msg = "Dear " + name + ",\n\n" + "Thanks for Registering on our portal."
					+ "\nWelcome to TA Digital Family." + "\n\nThanks & Regards" + "\nTA Digital";

			sendWelcomeMail(name, customer.getEmail(), msg);
		}

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

	public void reportException(String exception) {
		String msg = "Hi\n\nUser has encountered the following exception:\n" + exception
				+ "\n\nPlease Handle it.\n\nRegards\nTA Digital";
		sendReportMail(msg);
	}

	public String sendWelcomeMail(String name, String email, String msg) {
		String status = "NOT SENT";
		try {
			InputStream io = getClass().getResourceAsStream("mail.properties");

			// MAIL SERVER CONFIGURATION
			Properties properties = new Properties();
			properties.load(io);

			// CONNECT TO MAIL SERVER
			Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(properties.getProperty("mail.user"),
							properties.getProperty("mail.pwd"));
				}
			});

			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(properties.getProperty("mail.user")));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			mimeMessage.setSubject("Welcome to TA Digital Online Shopping Portal.");
			mimeMessage.setText(msg);

			// SEND MAIL
			Transport.send(mimeMessage);

			status = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}

		return status;
	}

	public void sendReportMail(String msg) {
		try {
			// MAIL SERVER CONFIGURATION
			InputStream io = getClass().getResourceAsStream("mail.properties");
			Properties properties = new Properties();
			properties.load(io);

			// CONNECT TO MAIL SERVER
			Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(properties.getProperty("mail.user"),
							properties.getProperty("mail.pwd"));
				}
			});
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(properties.getProperty("mail.user")));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("aniketmm98@gmail.com"));
			mimeMessage.setSubject("Bug Report");
			mimeMessage.setText(msg);

			// SEND MAIL
			Transport.send(mimeMessage);
		} catch (MessagingException mex) {
			mex.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
	}
}
