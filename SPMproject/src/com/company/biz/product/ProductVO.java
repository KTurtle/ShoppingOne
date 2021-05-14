package com.company.biz.product;

public class ProductVO {
	
		private String productId;
		private String productType;
		private String productSubType;
		private String productName;
		private String explanation;
		private int price;
		private int stock;
		private String productURL;
		public String getProductId() {
			return productId;
		}
		public void setProductId(String productId) {
			this.productId = productId;
		}
		public String getProductType() {
			return productType;
		}
		public void setProductType(String productType) {
			this.productType = productType;
		}
		public String getProductSubType() {
			return productSubType;
		}
		public void setProductSubType(String productSubType) {
			productSubType = productSubType;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public String getExplanation() {
			return explanation;
		}
		public void setExplanation(String explanation) {
			this.explanation = explanation;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		public int getStock() {
			return stock;
		}
		public void setStock(int stock) {
			this.stock = stock;
		}
		public String getProductURL() {
			return productURL;
		}
		public void setProductURL(String productURL) {
			this.productURL = productURL;
		}
		@Override
		public String toString() {
			return "ProductVO [productId=" + productId + ", productType=" + productType + ", ProductSubType="
					+ productSubType + ", productName=" + productName + ", explanation=" + explanation + ", price="
					+ price + ", stock=" + stock + ", productURL=" + productURL + "]";
		}
		
		
		
}