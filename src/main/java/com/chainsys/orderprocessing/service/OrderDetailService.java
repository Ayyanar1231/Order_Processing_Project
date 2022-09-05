package com.chainsys.orderprocessing.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.orderprocessing.model.OrderDetail;
import com.chainsys.orderprocessing.model.Orders;
import com.chainsys.orderprocessing.model.Product;
import com.chainsys.orderprocessing.repository.OrderDetailRepository;
import com.chainsys.orderprocessing.repository.OrdersRepository;
import com.chainsys.orderprocessing.repository.ProductRepository;

@Service
public class OrderDetailService {
	@Autowired
	private OrderDetailRepository orderDetailRepository;
	
	@Autowired
	private OrdersRepository ordersRepository;
	

	@Autowired
	private ProductRepository productRepository;

	public List<OrderDetail> getOrderDetail() {
		return orderDetailRepository.findAll();
	}

	@Transactional
	public OrderDetail save(OrderDetail orderDetail) {
		orderDetail = orderDetailRepository.save(orderDetail);
		Orders order = ordersRepository.findById(orderDetail.getOrderId());
		double newOrderAmount = order.getOrderAmount()+orderDetail.getTotalAmount();
		order.setOrderAmount(newOrderAmount);
		ordersRepository.save(order);

		Product product = productRepository.findById(orderDetail.getProductId());
		int stock = product.getStockInHand()-product.getQuantity();
		product.setStockInHand(stock);
		productRepository.save(product);
		return orderDetail;
	}
	
	public void deleteByOrderId(int id) {
		orderDetailRepository.deleteByOrderId(id);
	}
	
	public List<OrderDetail> getOrderDetailByOrderId(int orderId) {
		List<OrderDetail> listOrder =orderDetailRepository.findByOrderId(orderId);
	    return listOrder;
	}

	public List<OrderDetail> getOrderDetailByProductId(int productId) {
	    List<OrderDetail> listProduct =orderDetailRepository.findByProductId(productId);
	    return listProduct;
	}
	
	public OrderDetail getOrderDetailAndProduct(int orderId) {
		return orderDetailRepository.findById(orderId);
	}

}
