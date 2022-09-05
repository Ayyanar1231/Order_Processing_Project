package com.chainsys.orderprocessing.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.orderprocessing.model.CustomerDetail;

@Repository
public interface CustomerDetailRepository extends CrudRepository<CustomerDetail, Integer> {
	CustomerDetail findById(int id);

	@SuppressWarnings("unchecked")
	CustomerDetail save(CustomerDetail cd);

	void deleteById(int id);

	List<CustomerDetail> findAll();
	
	CustomerDetail findByEmailIdAndCustomerPassword(String name, String password);

    boolean existsByEmailId(String emailId);
	boolean existsByPhoneNumber(long phoneNumber);
	
}
