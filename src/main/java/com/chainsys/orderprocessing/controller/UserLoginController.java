package com.chainsys.orderprocessing.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String checkingAccess(@ModelAttribute("customer") CustomerDetail customerDetail, HttpSession session,
			Model m) {
		CustomerDetail customer = customerDetailService.getCustomerUserNameAndCustomerPassword(
				customerDetail.getEmailId(), customerDetail.getCustomerPassword());
		if (customer != null) {
			session.setAttribute("customerId", customer.getCustomerId());
			int id = customer.getCustomerId();
			return "redirect:/product/productlist?orderId=" + 0 + "&cusId=" + id;
		} else {
			String message = "Invalid E-mail & Password";
			m.addAttribute("message", message);
			return "customer-login";
		}

	}

//---------------login---------------------

	@GetMapping("/ordersuccess")
	public String orderSuccess(Model m,@RequestParam("orderId")int orderId,@RequestParam("cusId")int cusId) {
		String message = "Thank you for your Ordering";
		m.addAttribute("message", message);
		m.addAttribute("cusId", cusId);
		m.addAttribute("orderId", orderId);
		return "order-success";
	}
//-----------------success status----------------

	@GetMapping("/admin")
	public String adminPage(Model m) {
		String message = "Admin page of the FLIPKART";
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
	public String checkingAdminAccess(@ModelAttribute("admin") Admin admin, Model m) {
		Admin adminlogin = adminService.getAdminEmailAndAdminPassword(admin.getAdminEmail(), admin.getAdminPassword());
		if (adminlogin != null) {
			return "redirect:/admin";
		} else {
			String message = "Invalid E-mail & Password";
			m.addAttribute("message", message);
			return "admin-login";
		}

	}
}

//---------------------admin login----------------------