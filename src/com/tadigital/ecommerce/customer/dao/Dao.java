package com.tadigital.ecommerce.customer.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Dao {
	protected Connection openConnection() {
		Connection con = null;
		try {
			InputStream reader = getClass().getResourceAsStream("db.properties");
			Properties p = new Properties();
			p.load(reader);

			Class.forName(p.getProperty("db.driver"));

			con = DriverManager.getConnection(p.getProperty("db.con"), p.getProperty("db.user"),
					p.getProperty("db.pass"));
		} catch (ClassNotFoundException cnf) {
			cnf.printStackTrace();
		} catch (SQLException se) {
			se.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		return con;
	}

	protected Statement openStatement(Connection con) {
		Statement stmt = null;

		try {
			stmt = con.createStatement();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}

		return stmt;
	}

	protected void closeResultSet(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}

	protected void closeStatement(Statement stmt) {
		try {
			if (stmt != null) {
				stmt.close();
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}

	protected void closeConnection(Connection con) {
		try {
			if (con != null) {
				con.close();
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}

}
