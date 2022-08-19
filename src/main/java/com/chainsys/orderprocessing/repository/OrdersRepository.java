package com.chainsys.orderprocessing.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.orderprocessing.model.Orders;

@Repository
public interface OrdersRepository extends CrudRepository<Orders, Integer> {
	Orders findById(int id);

	Orders save(Orders or);

	void deleteById(int id);

	List<Orders> findAll();
	
	List<Orders> findAllByCustomerId(int id);
	
	Orders findByPaymentType(String order);
}
