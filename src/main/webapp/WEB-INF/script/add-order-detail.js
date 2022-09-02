function amountCalculate() {
		var quantity = document.getElementById("quantity").value;
		var price = document.getElementById("price").value;
		var totalAmount = parseInt(quantity) * parseInt(price);

		document.getElementById("totalAmount").value = totalAmount;
		return totalAmount;
	}