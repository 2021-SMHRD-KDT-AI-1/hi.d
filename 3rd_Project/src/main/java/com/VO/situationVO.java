package com.VO;

public class situationVO {
	String situation;
	String s_comment;
	String tag;
	
	public situationVO(String situation, String s_comment, String tag) {
		super();
		this.situation = situation;
		this.s_comment = s_comment;
		this.tag = tag;
	}
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	public String getS_comment() {
		return s_comment;
	}
	public void setS_comment(String s_comment) {
		this.s_comment = s_comment;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
	
}
