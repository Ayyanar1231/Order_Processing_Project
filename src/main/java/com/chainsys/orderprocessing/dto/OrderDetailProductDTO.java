package com.chainsys.orderprocessing.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.orderprocessing.model.OrderDetail;
import com.chainsys.orderprocessing.model.Orders;
import com.chainsys.orderprocessing.model.Product;

public class OrderDetailProductDTO {
	private Orders orders;
	private Product product;
	private List<OrderDetail> orderDetail = new ArrayList<OrderDetail>();

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<OrderDetail> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(List<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}

}
