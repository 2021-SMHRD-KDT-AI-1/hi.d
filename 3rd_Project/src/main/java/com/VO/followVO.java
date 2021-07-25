package com.VO;

public class followVO {
	int pet_num;
	int following_pet;
	
	public followVO(int pet_num, int following_pet) {
		super();
		this.pet_num = pet_num;
		this.following_pet = following_pet;
	}
	public int getPet_num() {
		return pet_num;
	}
	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}
	public int getFollowing_pet() {
		return following_pet;
	}
	public void setFollowing_pet(int following_pet) {
		this.following_pet = following_pet;
	}
	
}
