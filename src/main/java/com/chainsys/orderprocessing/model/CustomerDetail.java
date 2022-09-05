package com.chainsys.orderprocessing.model;

import java.util.Calendar;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "customer_detail")
public class CustomerDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "address_id")
	@SequenceGenerator(name = "address_id", sequenceName = "address_id", allocationSize = 1)
	@Column(name = "customer_id")
	private int customerId;
	@Column(name = "customer_password")
	@Size(min = 3, max = 15, message = "password 3 to 15 charector")
	private String customerPassword;
	@Column(name = "join_date")
	private String joinDate;
	@Column(name = "customer_name")
	@Size(min = 3, max = 15, message = "name 3 to 15 charector")
	private String customerName;
	@Column(name = "email_id")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}", message = "example@gmail.com")
	private String emailId;
	@Column(name = "gender")
	@NotNull(message = "gender may not be null")
	private String gender;
	@Column(name = "phone_number")
	@Digits(integer = 10, fraction = 0, message = "only 10 digit number")
	private long phoneNumber;
	@Column(name = "address")
	@Size(min = 5, message = "address min 5 letters")
	private String address;
	@Column(name = "district")
	@Size(min = 3, max = 15, message = "district min 3 to max 15 letters")
	private String district;
	@Column(name = "state")
	@Size(min = 3, max = 15, message = "state min 3 to max 15 letters")
	private String state;
	@Column(name = "country")
	@Size(min = 3, max = 15, message = "country 3 to 15 charector")
	private String country;
	@Column(name = "pin_code")
	@Digits(integer = 6, fraction = 0, message = "only 6 digit number")
	private long pinCode;

	@OneToMany(mappedBy = "customerDetail", fetch = FetchType.LAZY)
	private List<Orders> orders;

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate() {
		Calendar vCalendar = Calendar.getInstance();
		String joinDate = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR);
		this.joinDate = joinDate;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
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

	public long getPinCode() {
		return pinCode;
	}

	public void setPinCode(long pinCode) {
		this.pinCode = pinCode;
	}

	public List<Orders> getOrders() {
		return orders;
	}

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}
}
