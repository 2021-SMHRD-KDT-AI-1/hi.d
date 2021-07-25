package com.VO;

public class speciesVO {
	String species;
	String CorD;
	
	public speciesVO(String species, String corD) {
		super();
		this.species = species;
		CorD = corD;
	}
	
	public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	public String getCorD() {
		return CorD;
	}
	public void setCorD(String corD) {
		CorD = corD;
	}
	
}
