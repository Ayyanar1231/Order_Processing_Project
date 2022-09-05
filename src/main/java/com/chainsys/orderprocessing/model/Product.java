package com.chainsys.orderprocessing.model;

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
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "address_id")
    @SequenceGenerator(name = "address_id", sequenceName = "address_id",  allocationSize = 1)
	@Column(name = "product_id")
	private int productId;
	@Column(name = "product_name")
	@Size(min = 3, max = 15, message = "Product Name 3 to 15 charector")
	private String productName;
	@Column(name = "price")
	@Range(min = (long) 10.0)
	private double price;
	@Column(name = "quantity")
	@Min(value = 1, message = "Quantity is not required")
	private int quantity;
	@Column(name = "stock_in_hand")
	@Min(value = 1, message = "Stock is not required")
	private int stockInHand;
	@Column(name = "brand")
	@Size(min = 3, message = "brand 3 charector")
	private String brand;
	@Column(name = "colour")
	@Size(min = 3, max = 15, message = "color 3 charector")
	private String colour;
	@Column(name="image")
	private String image;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
	private List<OrderDetail> orderDetail;

	public List<OrderDetail> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(List<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getStockInHand() {
		return stockInHand;
	}

	public void setStockInHand(int stockInHand) {
		this.stockInHand = stockInHand;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}
}
