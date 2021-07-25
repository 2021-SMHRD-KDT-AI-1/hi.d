package com.VO;

public class feedVO {
	int feed_num;
	int pet_num;
	
	public feedVO(int feed_num, int pet_num) {
		super();
		this.feed_num = feed_num;
		this.pet_num = pet_num;
	}
	public int getFeed_num() {
		return feed_num;
	}
	public void setFeed_num(int feed_num) {
		this.feed_num = feed_num;
	}
	public int getPet_num() {
		return pet_num;
	}
	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}
	
	
}
