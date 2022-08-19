package com.chainsys.orderprocessing.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.orderprocessing.compositekey.OrderDetailsProduct;
import com.chainsys.orderprocessing.model.OrderDetail;
import com.chainsys.orderprocessing.model.Orders;
import com.chainsys.orderprocessing.repository.OrderDetailRepository;
import com.chainsys.orderprocessing.repository.OrdersRepository;

@Service
public class OrderDetailService {
	@Autowired
	private OrderDetailRepository orderDetailRepository;
	
	@Autowired
	private OrdersRepository ordersRepository;

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
		return orderDetail;
	}

	

	
	public void deleteByOrderId(OrderDetailsProduct id) {
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
	
	public Optional<OrderDetail> getOrderDetailAndProduct(OrderDetailsProduct orderId) {
		Optional<OrderDetail> listOrder =orderDetailRepository.findById(orderId);
	    return listOrder;
	}

}
