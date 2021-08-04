package com.VO;

public class pet_followVO {
	int pet_num;
	String pet_profile;
	String pet_nick;
	int following;
	int follow;
	int feed_count;
	String pet_intro;
	public pet_followVO(int pet_num, String pet_profile, String pet_nick, int following, int follow, int feed_count,
			String pet_intro) {
		super();
		this.pet_num = pet_num;
		this.pet_profile = pet_profile;
		this.pet_nick = pet_nick;
		this.following = following;
		this.follow = follow;
		this.feed_count = feed_count;
		this.pet_intro = pet_intro;
	}
	public pet_followVO(String pet_profile, String pet_nick, int following, int follow, int feed_count,
			String pet_intro) {
		super();
		this.pet_profile = pet_profile;
		this.pet_nick = pet_nick;
		this.following = following;
		this.follow = follow;
		this.feed_count = feed_count;
		this.pet_intro = pet_intro;
	}
	public pet_followVO(int pet_num, String pet_profile, String pet_nick, String pet_intro) {
		super();
		this.pet_num = pet_num;
		this.pet_profile = pet_profile;
		this.pet_nick = pet_nick;
		this.pet_intro = pet_intro;
	}
	public int getPet_num() {
		return pet_num;
	}
	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}
	public String getPet_profile() {
		return pet_profile;
	}
	public void setPet_profile(String pet_profile) {
		this.pet_profile = pet_profile;
	}
	public String getPet_nick() {
		return pet_nick;
	}
	public void setPet_nick(String pet_nick) {
		this.pet_nick = pet_nick;
	}
	public int getFollowing() {
		return following;
	}
	public void setFollowing(int following) {
		this.following = following;
	}
	public int getFollow() {
		return follow;
	}
	public void setFollow(int follow) {
		this.follow = follow;
	}
	public int getFeed_count() {
		return feed_count;
	}
	public void setFeed_count(int feed_count) {
		this.feed_count = feed_count;
	}
	public String getPet_intro() {
		return pet_intro;
	}
	public void setPet_intro(String pet_intro) {
		this.pet_intro = pet_intro;
	}
	
	
	
}
