package com.chainsys.orderprocessing.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.orderprocessing.model.OrderDetail;
import com.chainsys.orderprocessing.model.Product;
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
	public String getOrderDetail(@RequestParam("orderId") int orderId,Model model) {
		List<OrderDetail> theOrders = orderDetailService.getOrderDetailByOrderId(orderId);
		model.addAttribute("allOrderDetail", theOrders);
		return "list-order-detail";
	}
	
	@GetMapping("/orderdetaillist")
	public String listOrderDetail(Model model) {
		List<OrderDetail> theOrders = orderDetailService.getOrderDetail();
		model.addAttribute("allOrderDetail", theOrders);
		return "list-order-detail";
	}

	
	@GetMapping("/addorderdetail")
	public String showAddForm(@RequestParam("productId")int productId,@RequestParam("orderId")int orderId, Model model,HttpServletRequest request) {
		OrderDetail theOrderDetail = new OrderDetail();
		theOrderDetail.setOrderId(orderId);
		theOrderDetail.setProductId(productId);
		Product product=productService.findByid(productId);
		theOrderDetail.setPrice(product.getPrice());
		theOrderDetail.setQuantity(1);
		theOrderDetail.setTotalAmount(product.getPrice());
		orderDetailService.save(theOrderDetail);
		HttpSession session= request.getSession();
		int cusId=(int)session.getAttribute("customerId");
		return "redirect:/product/listproduct?orderId="+orderId+"&cusId="+cusId;
	}
	
	@PostMapping("/add")
	public String addNewOrderDetails(@ModelAttribute("addOrderDetail") OrderDetail theOrders) {
		theOrders = orderDetailService.save(theOrders);
		return "redirect:/orderdetail/getorderdetailbyorderid?orderId=" + theOrders.getOrderId();
	}

	@GetMapping("/updateorderdetail")
	public String showUpdateForm(@RequestParam("orderId") int id, @RequestParam("productId") int pid, Model model) {
		List<OrderDetail> theOrders = orderDetailService.getOrderDetailByOrderId(id);
		model.addAttribute("updateOrderDetail", theOrders);
		return "update-order-detail";
	}

	@PostMapping("/update")
	public String updateProducts(@Valid @ModelAttribute("updateOrderDetail") OrderDetail theOrders) {
		orderDetailService.save(theOrders);
		return "redirect:/orderdetail/listorderdetail";
	}

	@GetMapping("/deleteorder")
	public String deleteProduct(@RequestParam("orderDetailId") int orderDetailId,@RequestParam("orderId")int orderId,@RequestParam("cusId")int cusId,Model model) {
		orderDetailService.deleteByOrderId(orderDetailId);
//		model.addAttribute("cusId", cusId);
//		model.addAttribute("orderId", orderId);
		return "list-products";
	}

	@GetMapping("/getorderdetailbyproduct")
	public String getOrderAndOrderDetailsById(@RequestParam("orderDetailId") int orderDetailId,
			 Model model) {
		OrderDetail orderDetail = orderDetailService.getOrderDetailAndProduct(orderDetailId);
		model.addAttribute("fetchOrderDetail", orderDetail);
		model.addAttribute("fetchOrder", ordersService.findByid(orderDetail.getOrderId()));
		model.addAttribute("fetchProduct", productService.findByid(orderDetail.getProductId()));

		return "find-orderdetail-by-product-id";
	}

	@GetMapping("/getorderdetailbyorderid")
	public String getOrderDetailsByOrderId(@RequestParam("orderId") int orderId, Model model) {
		List<OrderDetail> orderDetail = orderDetailService.getOrderDetailByOrderId(orderId);
		model.addAttribute("fetchOrderDetail", orderDetail);

		return "find-orderdetail-by-order-id";
	}
}
