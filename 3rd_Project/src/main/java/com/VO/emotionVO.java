package com.VO;

public class emotionVO {
	String emotion;
	String e_comment;
	String tag;
	
	public emotionVO(String emotion, String e_comment, String tag) {
		super();
		this.emotion = emotion;
		this.e_comment = e_comment;
		this.tag = tag;
	}
	public String getEmotion() {
		return emotion;
	}
	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}
	public String getE_comment() {
		return e_comment;
	}
	public void setE_comment(String e_comment) {
		this.e_comment = e_comment;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
	
}
