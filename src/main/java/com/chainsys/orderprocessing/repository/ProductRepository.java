package com.chainsys.orderprocessing.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.orderprocessing.model.OrderDetail;
import com.chainsys.orderprocessing.model.Product;
@Repository
public interface ProductRepository extends CrudRepository<Product, Integer> {
	Product findById(int id);

	Product save(Product pr);
	
	OrderDetail save (OrderDetail od);

	void deleteById(int id);

	List<Product> findAll();
	
	@Query(value="SELECT * FROM Product where price<=?1",nativeQuery=true)
    public List<Product> getPrice(double price);
}
