package com.chainsys.orderprocessing.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.orderprocessing.model.Admin;
import com.chainsys.orderprocessing.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	AdminRepository adminRepository;

	public List<Admin> getAdmin() {
		return  adminRepository.findAll();
	}

	public Admin save(Admin admin) {
		return adminRepository.save(admin);
	}

	public Admin findByid(int id) {
		return adminRepository.findById(id);
	}

	public Admin getAdminNameAndAdminPassword(String name, String password) {
		return adminRepository.findByAdminNameAndAdminPassword(name, password);
	}
}
