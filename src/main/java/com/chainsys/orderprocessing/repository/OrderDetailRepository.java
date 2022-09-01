package com.chainsys.orderprocessing.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.orderprocessing.model.OrderDetail;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetail, Integer> {

	
	OrderDetail save(OrderDetail od);
	
	void deleteByOrderId(int id);
	
	OrderDetail findById(int id);
	
	List<OrderDetail> findAll();
	
	List<OrderDetail> findByOrderId(int orderId);

	List<OrderDetail> findByProductId(int productId);
}
