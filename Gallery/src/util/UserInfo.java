package util;

public class UserInfo {
	private String username="";
	private String password="";
	private String intro;
	private String a_tag,w_tag;
	private String img;
	private int w_id;
	private int usrid;
	private int shareid;
	
	public int getShareId() {
		return shareid;
	}
	public void setShareId(int shareid) {
		this.shareid=shareid;
	}
	
	public int getUsrId() {
		return usrid;
	}
	public void setUsrId(int usrid) {
		this.usrid=usrid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username=username;
	}
	
	public String getPasseord() {
		return password;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	
	public int getWId() {
		return w_id;
	}
	public void setWId() {
		this.w_id=w_id;
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
