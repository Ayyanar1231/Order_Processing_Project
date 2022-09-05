package com.chainsys.orderprocessing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.orderprocessing.model.OrderDetail;
import com.chainsys.orderprocessing.model.Product;
import com.chainsys.orderprocessing.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
	private ProductRepository productRepository;

	public List<Product> getProducts() {
		return productRepository.findAll();
	}

	public Product save(Product product) {
		return productRepository.save(product);
	}

	public OrderDetail save(OrderDetail orderDetail) {
		return productRepository.save(orderDetail);
	}

	public Product findByid(int id) {
		return productRepository.findById(id);
	}

	public void deleteById(int id) {
		productRepository.deleteById(id);
	}

	public List<Product> productPrice(double price) {
		return productRepository.getPrice(price);
	}
}
