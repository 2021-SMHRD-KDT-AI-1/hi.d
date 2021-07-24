package com.VO;

public class petVO {

	String nick;
	String profile;
	String introduce;
	String species;
	
	public petVO(String nick, String profile, String introduce, String species) {
		super();
		this.nick = nick;
		this.profile = profile;
		this.introduce = introduce;
		this.species = species;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}
}
