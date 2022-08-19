package com.chainsys.orderprocessing.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.orderprocessing.model.CustomerDetail;
import com.chainsys.orderprocessing.model.Orders;



public class CustomerOrderDTO {
	private CustomerDetail customer;
	private List<Orders> orderList = new ArrayList<Orders>();

	public CustomerDetail getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerDetail customer) {
		this.customer = customer;
	}

	public List<Orders> getOrderList() {
		return orderList;
	}

	public void addCustomerOrder(Orders customerDetail) {
		orderList.add(customerDetail);
	}
	
}
