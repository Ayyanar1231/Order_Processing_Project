	package com.chainsys.orderprocessing.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.orderprocessing.dto.CustomerOrderDTO;
import com.chainsys.orderprocessing.model.CustomerDetail;
import com.chainsys.orderprocessing.model.Orders;
import com.chainsys.orderprocessing.repository.CustomerDetailRepository;
import com.chainsys.orderprocessing.repository.OrdersRepository;

@Service
public class CustomerDetailService {
	@Autowired
	private CustomerDetailRepository customerDetailRepository;
	@Autowired
	private OrdersRepository ordersRepository;

	public List<CustomerDetail> getCustomer() {
		return customerDetailRepository.findAll();
	}

	public CustomerDetail save(CustomerDetail cd) {
		return customerDetailRepository.save(cd);
	}

	public CustomerDetail findByid(int id) {
		return customerDetailRepository.findById(id);
	}
	
	public CustomerDetail getCustomerUserNameAndCustomerPassword(String name, String password) {
		
        return customerDetailRepository.findByEmailIdAndCustomerPassword(name, password);
    }

	public void deleteById(int id) {
		customerDetailRepository.deleteById(id);
	}


	@Transactional
    public CustomerOrderDTO getCustomerAndOrder(int id) {

		CustomerDetail customerDetail = findByid(id);
		CustomerOrderDTO customerOrderDTO = new CustomerOrderDTO();
		customerOrderDTO.setCustomer(customerDetail);
    List<Orders> order = ordersRepository.findAllByCustomerId(id);
          Iterator<Orders> itr=order.iterator();
        while(itr.hasNext()) {
        	customerOrderDTO.addCustomerOrder((Orders) itr.next());
        }
        return customerOrderDTO;
	}

	public boolean findByEmail(String emailId) {
		boolean result=customerDetailRepository.existsByEmailId(emailId);
		return result;
	}

	public boolean findByPhoneNumber(long phoneNumber) {
	boolean result=customerDetailRepository.existsByPhoneNumber(phoneNumber);
	return result;
	}
}
