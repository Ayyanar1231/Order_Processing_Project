package com.chainsys.orderprocessing.controller;

import java.util.List;
import java.util.Optional;

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

import com.chainsys.orderprocessing.compositekey.OrderDetailsProduct;
import com.chainsys.orderprocessing.model.OrderDetail;
import com.chainsys.orderprocessing.service.OrderDetailService;
import com.chainsys.orderprocessing.service.OrdersService;
import com.chainsys.orderprocessing.service.ProductService;

@Controller
@RequestMapping("/orderdetail")
public class OrderDetailController {
	@Autowired
	OrderDetailService orderDetailService;
	@Autowired
	OrdersService ordersService;
	@Autowired
	ProductService productService;

	@GetMapping("/listorderdetail")
	public String getOrderDetail(Model model) {
		List<OrderDetail> theOrders = orderDetailService.getOrderDetail();
		model.addAttribute("allOrderDetail", theOrders);
		return "list-order-detail";
	}

	@GetMapping("/addorderdetail")
	public String showAddForm(@RequestParam("orderId") int id,Model model) {
		OrderDetail theOrderDetail = new OrderDetail();
		theOrderDetail.setOrderId(id);
		model.addAttribute("addOrderDetail", theOrderDetail);
		return "add-order-detail";
	}

	@PostMapping("/add")
	public String addNewOrderDetails( @ModelAttribute("addOrderDetail") OrderDetail theOrders,Errors errors) {
		if(errors.hasErrors()) {
			return "add-order-detail";
		}
		theOrders=orderDetailService.save(theOrders);
		return "redirect:/orderdetail/getorderdetailbyorderid?orderId="+theOrders.getOrderId();
	}

	@GetMapping("/updateorderdetail")
	public String showUpdateForm(@RequestParam("orderId") int id, @RequestParam("productId") int pid,
			Model model) {
		List<OrderDetail> theOrders = orderDetailService.getOrderDetailByOrderId(id);
		model.addAttribute("updateOrderDetail", theOrders);
		return "update-order-detail";
	}

	@PostMapping("/update")
	public String updateProducts(@Valid  @ModelAttribute("updateOrderDetail") OrderDetail theOrders) {
		orderDetailService.save(theOrders);
		return "redirect:/orderdetail/listorderdetail";
	}

	@GetMapping("/deleteorder")
	public String deleteProduct(@RequestParam("orderId") int id, @RequestParam("productId") int pid) {
		OrderDetailsProduct orderDetailsProduct = new OrderDetailsProduct(id, pid);
		orderDetailService.deleteByOrderId(orderDetailsProduct);
		return "redirect:/orderdetail/listorderdetail";
	}

	@GetMapping("/getorderdetailbyproduct")
	public String getOrderAndOrderDetailsById(@RequestParam("orderId") int orderId,
			@RequestParam("productId") int productId, Model model) {
		OrderDetailsProduct orderDetailsProduct = new OrderDetailsProduct(orderId, productId);
		Optional<OrderDetail> orderDetail = orderDetailService.getOrderDetailAndProduct(orderDetailsProduct);
		model.addAttribute("fetchOrderDetail", orderDetail);
		model.addAttribute("fetchOrder", ordersService.findByid(orderDetailsProduct.getOrderId()));
		model.addAttribute("fetchProduct", productService.findByid(orderDetailsProduct.getProductId()));

		return "find-orderdetail-by-product-id";
	}
	
	@GetMapping("/getorderdetailbyorderid")
	public String getOrderDetailsByOrderId(@RequestParam("orderId") int orderId, Model model) {
		List<OrderDetail> orderDetail = orderDetailService.getOrderDetailByOrderId(orderId);
		model.addAttribute("fetchOrderDetail", orderDetail);
		
		return "find-orderdetail-by-order-id";
	}
}
