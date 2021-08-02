package com.VO;

public class feed_commentVO {
	int comment_num;
	int pet_num;
	int feed_num;
	String comment_content;
	String like_pet;
	
	public feed_commentVO(int comment_num, int pet_num, int feed_num, String comment_content, String like_pet) {
		super();
		this.comment_num = comment_num;
		this.pet_num = pet_num;
		this.feed_num = feed_num;
		this.comment_content = comment_content;
		this.like_pet = like_pet;
	}
	
	public feed_commentVO(int pet_num, int feed_num, String comment_content, String like_pet) {
		super();
		this.pet_num = pet_num;
		this.feed_num = feed_num;
		this.comment_content = comment_content;
		this.like_pet = like_pet;
	}

	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
	public int getPet_num() {
		return pet_num;
	}
	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}
	public int getFeed_num() {
		return feed_num;
	}
	public void setFeed_num(int feed_num) {
		this.feed_num = feed_num;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getLike_pet() {
		return like_pet;
	}
	public void setLike_pet(String like_pet) {
		this.like_pet = like_pet;
	}
	
}
