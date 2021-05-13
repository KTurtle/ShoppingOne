package com.testing.image;

public class ImageVO {

	private String imageURL;

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	@Override
	public String toString() {
		return "ImageVO [imageURL=" + imageURL + ", getImageURL()=" + getImageURL() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
}
