package com.VO;

import java.sql.Date;

public class feed_upload_petVO {
	int feed_num;
	int pet_num;
	String pet_nick;
	String pet_profile;
	String img_addr;
	String feed_content;
	String like_pet;
	String f_lock;
	Date upload_time;
	
	public feed_upload_petVO(int feed_num, int pet_num, String pet_nick, String pet_profile, String img_addr,
			String feed_content, String like_pet, String f_lock, Date upload_time) {
		super();
		this.feed_num = feed_num;
		this.pet_num = pet_num;
		this.pet_nick = pet_nick;
		this.pet_profile = pet_profile;
		this.img_addr = img_addr;
		this.feed_content = feed_content;
		this.like_pet = like_pet;
		this.f_lock = f_lock;
		this.upload_time = upload_time;
	}

	public feed_upload_petVO(int feed_num, int pet_num, String img_addr, String feed_content, String like_pet,
			String f_lock, Date upload_time) {
		super();
		this.feed_num = feed_num;
		this.pet_num = pet_num;
		this.img_addr = img_addr;
		this.feed_content = feed_content;
		this.like_pet = like_pet;
		this.f_lock = f_lock;
		this.upload_time = upload_time;
	}

	public feed_upload_petVO(int pet_num, String pet_nick, String pet_profile) {
		super();
		this.pet_num = pet_num;
		this.pet_nick = pet_nick;
		this.pet_profile = pet_profile;
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

	public String getPet_nick() {
		return pet_nick;
	}

	public void setPet_nick(String pet_nick) {
		this.pet_nick = pet_nick;
	}

	public String getPet_profile() {
		return pet_profile;
	}

	public void setPet_profile(String pet_profile) {
		this.pet_profile = pet_profile;
	}

	public String getImg_addr() {
		return img_addr;
	}

	public void setImg_addr(String img_addr) {
		this.img_addr = img_addr;
	}

	public String getFeed_content() {
		return feed_content;
	}

	public void setFeed_content(String feed_content) {
		this.feed_content = feed_content;
	}

	public String getLike_pet() {
		return like_pet;
	}

	public void setLike_pet(String like_pet) {
		this.like_pet = like_pet;
	}

	public String getF_lock() {
		return f_lock;
	}

	public void setF_lock(String f_lock) {
		this.f_lock = f_lock;
	}

	public Date getUpload_time() {
		return upload_time;
	}

	public void setUpload_time(Date upload_time) {
		this.upload_time = upload_time;
	}
	
	
	
	
	
}
