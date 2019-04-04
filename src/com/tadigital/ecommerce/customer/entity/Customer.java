package com.tadigital.ecommerce.customer.entity;

public class Customer {
	private int id;
	private String fname;
	private String lname;
	private String gender;
	private String addr;
	private String city;
	private String zip;
	private String state;
	private String country;
	private String contact;
	private String email;
	private String pass;

	public Customer() {
	}

	public Customer(int id, String fname, String lname, String email, String pass) {
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.pass = pass;
	}

	public Customer(Customer customer) {
		this.id = customer.id;
		this.fname = customer.fname;
		this.lname = customer.lname;
		this.gender = customer.gender;
		this.addr = customer.addr;
		this.city = customer.city;
		this.zip = customer.zip;
		this.state = customer.state;
		this.country = customer.country;
		this.contact = customer.contact;
		this.email = customer.email;
		this.pass = customer.pass;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", addr=" + addr
				+ ", city=" + city + ", zip=" + zip + ", state=" + state + ", country=" + country + ", contact="
				+ contact + ", email=" + email + ", pass=" + pass + "]";
	}

}
