package com.chainsys.orderprocessing.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.orderprocessing.model.Admin;

@Repository
public interface AdminRepository extends CrudRepository<Admin, Integer> {
	Admin findById(int id);

	Admin save(Admin admin);

	void deleteById(int id);

	List<Admin> findAll();

	Admin findByAdminEmailAndAdminPassword(String name, String password);
}
