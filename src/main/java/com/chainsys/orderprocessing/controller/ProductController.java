package com.chainsys.orderprocessing.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.multipart.MultipartFile;

import com.chainsys.orderprocessing.model.Product;
import com.chainsys.orderprocessing.service.CustomerDetailService;
import com.chainsys.orderprocessing.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@Autowired
	CustomerDetailService customerDetailService;

	public static String uploadDir = System.getProperty("user.dir") + "/src/main/resources/Images";

	@GetMapping("/listproduct")
	public String getProducts(Model model) {
		List<Product> theProduct = productService.getProducts();
		model.addAttribute("allProduct", theProduct);
//		Product product = new Product();
//		product.getCutomerId(id);
		return "list-products";
	}

	@GetMapping("/getproductbyid")
	public String getProduct(@RequestParam("productId") int id, Model model) {
		Product theProduct = productService.findByid(id);
		model.addAttribute("getProductById", theProduct);
//		int productId = theProduct.getProductId();
		return "find-product-id";
	}

	@GetMapping("/addproduct")
	public String showAddForm(Model model) {
		Product theProduct = new Product();
		model.addAttribute("addProduct", theProduct);
		return "add-product";
	}

	@PostMapping("/add")
	public String addNewOrder(@Valid @ModelAttribute("addProduct") Product product,
			@RequestParam("productImage") MultipartFile file, Errors errors, @RequestParam("imgName") String imgName)
			throws IOException {
		if (errors.hasErrors()) {
			return "add-product";
		} else {
			product.setProductId(product.getProductId());
			product.setProductName(product.getProductName());
			product.setQuantity(product.getQuantity());
			product.setBrand(product.getBrand());
			product.setPrice(product.getPrice());
			product.setColour(product.getColour());
			product.setStockInHand(product.getStockInHand());
			String imageUUID;
			if (!file.isEmpty()) {
				imageUUID = file.getOriginalFilename();
				Path fileAndPathName = Paths.get(uploadDir, imageUUID);
				Files.write(fileAndPathName, file.getBytes());
			} else {
				imageUUID = imgName;
			}
			product.setImage(imageUUID);
		}
		productService.save(product);
		return "redirect:/admin";
	}

	@GetMapping("/getupdate")
	public String getUpdate() {
		return "update-product-form";
	}

	@GetMapping("/updateproduct")
	public String showUpdateForm(@RequestParam("productId") int id, Model model) {
		Product theProduct = productService.findByid(id);
		model.addAttribute("updateProduct", theProduct);
		return "update-product";
	}

	@PostMapping("/update")
	public String updateProducts(@Valid @ModelAttribute("updateProduct") Product product,
			@RequestParam("productImage") MultipartFile file, Errors errors, @RequestParam("imgName") String imgName)
			throws IOException {
		if (errors.hasErrors()) {
			return "update-product";
		}
//		product.setProductId(product.getProductId()); 
//		product.setProductName(product.getProductName());
//		product.setQuantity(product.getQuantity());
//		product.setBrand(product.getBrand());
//		product.setPrice(product.getPrice());
//		product.setColour(product.getColour());
//		product.setStockInHand(product.getStockInHand());
		String imageUUID;
		if (!file.isEmpty()) {
			imageUUID = file.getOriginalFilename();
			Path fileAndPathName = Paths.get(uploadDir, imageUUID);
			Files.write(fileAndPathName, file.getBytes());
		} else {
			imageUUID = imgName;
		}
		product.setImage(imageUUID);
		productService.save(product);
		return "redirect:/admin";
	}

	@GetMapping("/getdelete")
	public String getDelete() {
		return "delete-product-form";
	}

	@GetMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("productId") int id) {
		productService.deleteById(id);
		return "redirect:/admin";
	}

	@GetMapping("/getfilterprice")
	public String getPriceForm() {
		return "list-filter-products";
	}

	@GetMapping("/price")
	public String getAllStatus(@RequestParam("price") double price, Model model) {
		List<Product> productPrice = productService.productPrice(price);
		model.addAttribute("allProduct", productPrice);
		return "list-products";
	}

}