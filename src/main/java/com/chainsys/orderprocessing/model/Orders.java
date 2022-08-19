package com.chainsys.orderprocessing.model;

import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name = "orders")
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "address_id")
    @SequenceGenerator(name = "address_id", sequenceName = "address_id",  allocationSize = 1)
	@Column(name = "order_id")
	private int orderId;
	@Column(name = "customer_id")
	private int customerId;
	@Column(name = "order_date")
	private String orderDate;
	@Column(name = "ship_date")
	private String shipDate;
	@Column(name = "delivery_fees")
	@Range(min = (long) 35.0, max = (long) 50.0)
	private double deliveryFees;
	@Column(name = "order_amount")
	@Min(value = 0)
	private double orderAmount;
	@Column(name = "payment_type")
	@NotNull(message = "PaymentType may not be null")
	private String paymentType;
	@Column(name = "payment_reference_number")
	private long paymentReferenceNumber;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "customer_id", nullable = false, insertable = false, updatable = false)
	private CustomerDetail customerDetail;
	
	@OneToMany(mappedBy = "orders", fetch = FetchType.LAZY)
	private List<OrderDetail> orderDetail;

	public List<OrderDetail> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(List<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}

	public CustomerDetail getCustomerDetail() {
		return customerDetail;
	}

	public void setCustomerDetail(CustomerDetail customerDetail) {
		this.customerDetail = customerDetail;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate() {
		Calendar vCalendar = Calendar.getInstance();
		String orderDate = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR);
		this.orderDate = orderDate;
	}

	public String getShipDate() {
		return shipDate;
	}

	public void setShipDate() {
		Calendar vCalendar = Calendar.getInstance();
		String shipDate = (vCalendar.get(Calendar.DATE) + 7) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR);
		this.shipDate = shipDate;
	}

	public double getDeliveryFees() {
		return deliveryFees;
	}

	public void setDeliveryFees(double deliveryFees) {
		this.deliveryFees = deliveryFees;
	}

	public double getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(double orderAmount) {
		this.orderAmount = orderAmount;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public long getPaymentReferenceNumber() {
		return paymentReferenceNumber;
	}

	public void setPaymentReferenceNumber(long paymentReferenceNumber) {
		this.paymentReferenceNumber = paymentReferenceNumber;
	}

	
}
