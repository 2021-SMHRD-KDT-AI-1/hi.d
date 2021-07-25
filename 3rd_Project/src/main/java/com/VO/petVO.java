package com.VO;

public class petVO {
	
	String pet_num;
	String pet_nick;
	String pet_profile;
	String pet_introduce;
	String pet_gen;
	String species;
	String email;
	
	public petVO(String pet_num, String pet_nick, String pet_profile, String pet_introduce, String pet_gen,
			String species, String email) {
		super();
		this.pet_num = pet_num;
		this.pet_nick = pet_nick;
		this.pet_profile = pet_profile;
		this.pet_introduce = pet_introduce;
		this.pet_gen = pet_gen;
		this.species = species;
		this.email = email;
	}//

	
	public petVO(String email, String pet_num, String pet_nick, String pet_introduce) {
		this.email = email;
		this.pet_num = pet_num;
		this.pet_nick = pet_nick;
		this.pet_introduce = pet_introduce;
	}
	
	public petVO(String email,  String pet_nick, String pet_introduce) {
		this.email = email;
		this.pet_nick = pet_nick;
		this.pet_introduce = pet_introduce;
	}

	public String getPet_num() {
		return pet_num;
	}

	public void setPet_num(String pet_num) {
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

	public String getPet_introduce() {
		return pet_introduce;
	}

	public void setPet_introduce(String pet_introduce) {
		this.pet_introduce = pet_introduce;
	}

	public String getPet_gen() {
		return pet_gen;
	}

	public void setPet_gen(String pet_gen) {
		this.pet_gen = pet_gen;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
