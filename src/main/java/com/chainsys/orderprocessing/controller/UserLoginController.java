package com.chainsys.orderprocessing.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.chainsys.orderprocessing.model.Admin;
import com.chainsys.orderprocessing.model.CustomerDetail;
import com.chainsys.orderprocessing.service.AdminService;
import com.chainsys.orderprocessing.service.CustomerDetailService;

@Controller
public class UserLoginController {
	@Autowired
	private CustomerDetailService customerDetailService;

	@Autowired
	AdminService adminService;

	@GetMapping("/webapp")
	public String webApp(Model m) {
		String message = "Hello World, Created the webside on this Mr. @ Ayyanar";
		m.addAttribute("message", message);
		return "web-app";
	}

//--------------------webapp-------------------

	@GetMapping("/customerlogin")
	public String customeraccessform(Model model) {
		CustomerDetail theCus = new CustomerDetail();
		model.addAttribute("customer", theCus);
		return "customer-login";
	}

	@PostMapping("/checkcustomerlogin")
	public String checkingAccess(@ModelAttribute("customer") CustomerDetail customerDetail) {
		CustomerDetail customer = customerDetailService
				.getCustomerUserNameAndCustomerPassword(customerDetail.getCustomerUserName(), customerDetail.getCustomerPassword());
	
		if (customer != null) {
			return "redirect:/product/listproduct";
		} else
			return "invalid-customer-error";

	}

//---------------login---------------------

	@GetMapping("/ordersuccess")
	public String orderSuccess(Model m) {
		String message = "Thank you for your Ordering";
		m.addAttribute("message", message);
		return "order-success";
	}
//-----------------success status----------------

	@GetMapping("/admin")
	public String adminPage(Model m) {
		String message = "Admin page of the FLIPCART";
		m.addAttribute("message", message);
		return "admin-usage";
	}

	@GetMapping("/adminlogin")
	public String adminaccessform(Model model) {
		Admin theAdmin = new Admin();
		model.addAttribute("admin", theAdmin);
		return "admin-login";
	}

	@PostMapping("/checkadminlogin")
	public String checkingAdminAccess(@ModelAttribute("admin") Admin admin) {
		Admin adminlogin = adminService.getAdminNameAndAdminPassword(admin.getAdminName(), admin.getAdminPassword());
		if (adminlogin != null) {
			return "redirect:/admin";
		} else
			return "invalid-admin-error";

	}
}

//---------------------admin login----------------------