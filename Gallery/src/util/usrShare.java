package util;


public class usrShare {
	
	private String username;
	private String intro;
	private String a_tag,w_tag;
	private String img;
	private int w_id;
	private int shareid;
	
	public int getShareId() {
		return shareid;
	}
	public void setShareId(int shareid) {
		this.shareid=shareid;
	}
	
	public int getWId() {
		return w_id;
	}
	public void setWId(int w_id) {
		this.w_id=w_id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username=username;
	}
	
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro=intro;
	}
	
	public String getATag(){
		return a_tag;
	}
	public void setATag(String a_tag) {
		this.a_tag=a_tag;
	}
	
	public String getWTag(){
		return w_tag;
	}
	public void setWTag(String w_tag) {
		this.w_tag=w_tag;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img=img;
	}

}
