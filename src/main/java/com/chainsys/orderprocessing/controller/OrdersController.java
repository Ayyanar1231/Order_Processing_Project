package com.chainsys.orderprocessing.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

import com.chainsys.orderprocessing.model.Orders;
import com.chainsys.orderprocessing.model.Product;
import com.chainsys.orderprocessing.service.CustomerDetailService;
import com.chainsys.orderprocessing.service.OrdersService;
import com.chainsys.orderprocessing.service.ProductService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	OrdersService ordersService;

	@Autowired
	ProductService productService;
	
	@Autowired
	CustomerDetailService customerDetailService;

	@GetMapping("/listorders")
	public String getOrders(Model model) {
		List<Orders> theOrders = ordersService.getOrders();
		model.addAttribute("allOrders", theOrders);
		return "list-orders";
	}

//	@GetMapping("/addorder")
//	public String showAddOrder(@RequestParam("orderId") int id,HttpServletRequest request, Model model) {
//		Product product = productService.findByid(id);
//		Orders theOrders = new Orders();
////		List<Product> selectedProducts = new ArrayList<Product>();
////		for(Product prd:theProducts) {
////			if(prd.getSelected()) {
////				selectedProducts.add(prd);
////			}
////		}
//		HttpSession session = request.getSession();
//        int customerId = (int)session.getAttribute("customerId");
//        theOrders.setCustomerId(customerId);
//		model.addAttribute("addOrder", theOrders);
////		model.addAttribute("selectedProducts", selectedProducts);
//		theOrders.setDeliveryFees(40.0);
//		return "add-order";
//	}
	
	@GetMapping("/addorder")
	public String showAddOrder(@RequestParam("productId")int productId,@RequestParam("cusId")int cusId,@RequestParam("orderId")int orderId,Model model,HttpSession session) {
		session.setAttribute("productId", productId);
		if(orderId==0) {
			Orders theOrders = new Orders();
			theOrders.setOrderId(orderId);
	        theOrders.setCustomerId(cusId);
			model.addAttribute("addOrder", theOrders);
			theOrders.setDeliveryFees(40.0);
			return "add-order";
		}else
			return "redirect:/orderdetail/addorderdetail?productId="+productId+"&orderId="+orderId;
	}

	@PostMapping("/add")
	public String addNewOrder(@Valid @ModelAttribute("addOrder") Orders theOrder, Errors errors,HttpServletRequest request) {
		if (errors.hasErrors()) {
			return "add-order";
		}
		theOrder.setOrderDate();
		theOrder.setShipDate();
		theOrder = ordersService.save(theOrder);
		HttpSession session= request.getSession();
		int productId=(int)session.getAttribute("productId");
		int orderId=theOrder.getOrderId();
		return "redirect:/orderdetail/addorderdetail?productId="+productId+"&orderId="+orderId;
	}

	@GetMapping("/updateorder")
	public String showUpdateOrder(@RequestParam("orderId") int id, Model model) {
		Orders theOrder = ordersService.findByid(id);
		model.addAttribute("updateOrder", theOrder);
		return "update-order";
	}

	@PostMapping("/update")
	public String updateOrder(@Valid @ModelAttribute("updateOrder") Orders theOrder, Errors errors) {
		if (errors.hasErrors()) {
			return "update-order";
		}
		theOrder.setOrderDate();
		theOrder.setShipDate();
		ordersService.save(theOrder);
		return "redirect:/orders/listorders";
	}

	@GetMapping("/deleteorder")
	public String deleteOrder(@RequestParam("orderId") int id) {
		ordersService.deleteById(id);
		return "redirect:/orders/listorders";
	}

}
