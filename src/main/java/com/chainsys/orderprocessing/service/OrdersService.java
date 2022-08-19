package com.chainsys.orderprocessing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.orderprocessing.model.Orders;
import com.chainsys.orderprocessing.repository.OrdersRepository;


@Service
public class OrdersService {
	@Autowired
	private OrdersRepository ordersRepository;

	public List<Orders> getOrders() {
		return ordersRepository.findAll();
	}

	@Transactional
	public Orders save(Orders order) {
		order = ordersRepository.save(order);
		return order;
	}

	public Orders findByid(int id) {
		return ordersRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		ordersRepository.deleteById(id);
	}
	
	public List<Orders> fetchAllByCustomerId(int id) {
		return ordersRepository.findAllByCustomerId(id);
	}
}
