package com.company.biz.payment;

public class PaymentVO {
	
	private int paymentid;
	private int usernumber;
	private String productid;
	private int cnt;
	private String address;
	private String tel;
	private String CCnumber;
	private int CCpassword;
	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public int getUsernumber() {
		return usernumber;
	}
	public void setUsernumber(int usernumber) {
		this.usernumber = usernumber;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCCnumber() {
		return CCnumber;
	}
	public void setCCnumber(String cCnumber) {
		CCnumber = cCnumber;
	}
	public int getCCpassword() {
		return CCpassword;
	}
	public void setCCpassword(int cCpassword) {
		CCpassword = cCpassword;
	}
	@Override
	public String toString() {
		return "PaymentVO [paymentid=" + paymentid + ", usernumber=" + usernumber + ", productid=" + productid
				+ ", cnt=" + cnt + ", address=" + address + ", tel=" + tel + ", CCnumber=" + CCnumber + ", CCpassword="
				+ CCpassword + "]";
	}
	

	
}
