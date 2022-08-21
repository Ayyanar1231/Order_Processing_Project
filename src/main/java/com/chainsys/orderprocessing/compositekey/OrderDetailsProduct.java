package com.chainsys.orderprocessing.compositekey;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Column;

public class OrderDetailsProduct implements Serializable {
	private static final long serialVersionUID = 1L;
	@Column(name = "order_id")
	private int orderId;
	@Column(name = "product_id")
	private int productId;

	OrderDetailsProduct() {

	}

	public OrderDetailsProduct(int orderId, int productId) {
		this.orderId = orderId;
		this.productId = productId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

}
