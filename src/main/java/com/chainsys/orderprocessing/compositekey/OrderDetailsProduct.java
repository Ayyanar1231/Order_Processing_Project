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

	@Override
	public int hashCode() {
		return Objects.hash(this.getOrderId(), this.getProductId());
	}

	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if (obj == null) {
			return false;
		}
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			OrderDetailsProduct orderDetailsProduct = (OrderDetailsProduct) obj;
			if (orderDetailsProduct.getOrderId() == this.getOrderId()) {
				if (orderDetailsProduct.getProductId() == this.getProductId())
					result = true;
			}
		}
		return result;
	}

}
