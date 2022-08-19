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

import com.chainsys.orderprocessing.model.Orders;
import com.chainsys.orderprocessing.service.OrdersService;
import com.chainsys.orderprocessing.service.ProductService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	OrdersService ordersService;

	@Autowired
	ProductService productService;

	@GetMapping("/listorders")
	public String getOrders(Model model) {
		List<Orders> theOrders = ordersService.getOrders();
		model.addAttribute("allOrders", theOrders);
		return "list-orders";
	}

	@GetMapping("/addorder")
	public String showAddOrder(Model model) {
		Orders theOrders = new Orders();
		model.addAttribute("addOrder", theOrders);
		theOrders.setDeliveryFees(40.0);
		return "add-order";
	}

	@PostMapping("/add")
	public String addNewOrder(@Valid @ModelAttribute("addOrder") Orders theOrder, Errors errors) {
		if (errors.hasErrors()) {
			return "add-order";
		}
		theOrder.setOrderDate();
		theOrder.setShipDate();
		theOrder = ordersService.save(theOrder);
		int orderId = theOrder.getOrderId();
		return "redirect:/orderdetail/addorderdetail?orderId=" + orderId;
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

//	@GetMapping("/listordersbycustomer")
//	public String getOrdersOfCustomer(@Valid @RequestParam("cid") int cid, Model model) {
//		List<Orders> theOrders = ordersService.fetchAllByCustomerId(cid);
//		for (Orders orders : theOrders) {
//			List<OrderDetail> orderDetails = orderDetailService.getOrderDetailByOrderId(orders.getOrderId());
//			for (OrderDetail product : orderDetails) {
//				Product products = productService.findByid(product.getProductId());
//				model.addAttribute("allProducts", products);
//				model.addAttribute("allOrderedProducts", orderDetails);
//				model.addAttribute("allCustomerorders", theOrders);
//			}
//		}
//		return "list-orders-customer";
//	}

}
