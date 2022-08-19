package com.chainsys.orderprocessing.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.orderprocessing.compositekey.OrderDetailsProduct;
import com.chainsys.orderprocessing.model.OrderDetail;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetail, OrderDetailsProduct> {

	
	OrderDetail save(OrderDetail od);
	
	void deleteByOrderId(OrderDetailsProduct id);

	List<OrderDetail> findAll();
	
	List<OrderDetail> findByOrderId(int orderId);

	List<OrderDetail> findByProductId(int productId);
}
