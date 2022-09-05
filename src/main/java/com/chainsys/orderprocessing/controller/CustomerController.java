package com.chainsys.orderprocessing.controller;

import java.util.List;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.orderprocessing.commonutil.InvalidInputDataException;
import com.chainsys.orderprocessing.dto.CustomerOrderDTO;
import com.chainsys.orderprocessing.model.CustomerDetail;
import com.chainsys.orderprocessing.service.CustomerDetailService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerDetailService customerDetailService;

	@GetMapping("/listcustomer")
	public String getCustomers(Model model) {
		List<CustomerDetail> theCustomerDetail = customerDetailService.getCustomer();
		model.addAttribute("allCustomer", theCustomerDetail);
		return "list-customers";
	}

	@GetMapping("/getcustomerbyid")
	public String getCustomer(@RequestParam("customerId") int id, Model model) {
		CustomerDetail thecustomer = customerDetailService.findByid(id);
		thecustomer.getCustomerId();
		thecustomer.setJoinDate();
		model.addAttribute("getCustomerById", thecustomer);
		return "find-customer-id";
	}

	@GetMapping("/addcustomer")
	public String showAddForm(Model model) {
		CustomerDetail theCustomerDetail = new CustomerDetail();
		model.addAttribute("addCustomer", theCustomerDetail);
		return "add-customer";
	}

	@PostMapping("/add")
	public String addNewCustomers(@Valid @ModelAttribute("addCustomer") CustomerDetail theCustomerDetail, Errors errors,
			Model model) throws InvalidInputDataException{
		String messageB=null;
		String messageA=null;
		if (errors.hasErrors()) {
			return "add-customer";
		}
		try {
			boolean result1 = customerDetailService.findByEmail(theCustomerDetail.getEmailId());
			boolean resultA = customerDetailService.findByPhoneNumber(theCustomerDetail.getPhoneNumber());
			if (result1 == true) {
				 messageB= "Check Your email ";
				 throw new InvalidInputDataException(messageB);

				 }
				 else if (resultA == true) {
				messageA = "Check Your PhoneNumber ";
				throw new InvalidInputDataException(messageA);

			} 
			else {
				theCustomerDetail.setJoinDate();
				customerDetailService.save(theCustomerDetail);
			}
			
		} catch (InvalidInputDataException e) {
			String message = "Already exist";
			
			model.addAttribute("message", message);
			model.addAttribute("result", e.getMessage());
			return "add-customer";
		}
		return "redirect:/customerlogin";
	}

	@GetMapping("/updatecustomer")
	public String showUpdateForm(@RequestParam("customerId") int id, Model model) {
		CustomerDetail theCustomerDetail = customerDetailService.findByid(id);
		model.addAttribute("updateCustomer", theCustomerDetail);
		return "update-customer";
	}

	@PostMapping("/update")
	public String updateProducts(@Valid @ModelAttribute("updateCustomer") CustomerDetail theCustomerDetail,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-customer";
		}
		theCustomerDetail.setJoinDate();
		customerDetailService.save(theCustomerDetail);
		return "redirect:/customer/listcustomer";
	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("customerId") int id, Model m) {
		customerDetailService.deleteById(id);
		return "redirect:/customer/listcustomer";
	}

	@GetMapping("/getcustomerorder")
	public String getOrders(@RequestParam("cusId") int id, Model model) {
		CustomerOrderDTO dto = customerDetailService.getCustomerAndOrder(id);
		model.addAttribute("getCustomer", dto.getCustomer());
		model.addAttribute("orderList", dto.getOrderList());
		return "list-customer-order";
	}

}
