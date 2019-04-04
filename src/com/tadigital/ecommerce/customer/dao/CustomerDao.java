package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerDao extends Dao {
	public boolean selectCustomerByEmailAndPass(Customer customer) {
		Boolean status = false;
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM cust_info WHERE email = '" + customer.getEmail() + "' AND pwd = '"
					+ customer.getPass() + "'";

			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				status = true;

				customer.setId(rs.getInt(1));
				customer.setFname(rs.getString(2));
				customer.setLname(rs.getString(3));
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	public boolean insertCustomer(Customer customer) {
		Boolean status = false;

		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "INSERT INTO cust_info(fname, lname, email, pwd) " + "VALUES('" + customer.getFname() + "', '"
					+ customer.getLname() + "', '" + customer.getEmail() + "', '" + customer.getPass() + "')";

			int rows = stmt.executeUpdate(sql);
			if (rows != 0) {
				status = true;
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	public boolean updateCustomerPwd(Customer customer) {
		Boolean status = false;

		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "UPDATE cust_info SET pwd='" + customer.getPass() + "' WHERE email = '" + customer.getEmail()
					+ "'";

			int rows = stmt.executeUpdate(sql);
			if (rows != 0) {
				status = true;
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	public boolean updateCustomerDetails(Customer customer, String x) {
		boolean status = false;

		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			StringBuffer sql = new StringBuffer("UPDATE cust_info SET ");
			boolean flag = false;

			if (customer.getFname() != "") {
				sql.append("fname='" + customer.getFname() + "'");
				flag = true;
			}

			if (customer.getLname() != "") {
				if (flag)
					sql.append(",");
				sql.append("lname='" + customer.getLname() + "'");
				flag = true;
			}

			if (customer.getGender() != "") {
				if (flag)
					sql.append(",");
				sql.append("gender='" + customer.getGender() + "'");
				flag = true;
			}

			if (customer.getAddr() != "") {
				if (flag)
					sql.append(",");
				sql.append("addr='" + customer.getAddr() + "'");
				flag = true;
			}

			if (customer.getCity() != "") {
				if (flag)
					sql.append(",");
				sql.append("city='" + customer.getCity() + "'");
				flag = true;
			}

			if (customer.getZip() != "") {
				if (flag)
					sql.append(",");
				sql.append("zip='" + customer.getZip() + "'");
				flag = true;
			}

			if (customer.getState() != null && customer.getState() != "") {
				if (flag)
					sql.append(",");
				sql.append("state='" + customer.getState() + "'");
				flag = true;
			}

			int i = -1;

			if (customer.getCountry() != null && customer.getCountry() != "") {
				if (flag)
					sql.append(",");
				sql.append("country='" + customer.getCountry() + "'");
				flag = true;
			}

			if (customer.getContact() != "") {
				if (flag)
					sql.append(",");
				sql.append("contact='" + customer.getContact() + "'");
				flag = true;
			}

			if (customer.getEmail() != "") {
				if (flag)
					sql.append(",");
				sql.append("email='" + customer.getEmail() + "'");
				flag = true;
			}

			sql.append(" WHERE email='" + x + "'");

			int row = stmt.executeUpdate(sql.toString());

			if (row != 0) {
				status = true;
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}
}
