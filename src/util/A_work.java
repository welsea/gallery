package util;

import java.util.Date;

public class A_work {
	private int a_id,w_id;
	private String name_ch;
	private String name_en;
	private String w_location;
	private String w_date;
	private String img;
	
	
	public int getId(){
		return a_id;
	}
	public void setId(int a_id) {  
        this.a_id = a_id;  
    } 
	
	public int getWId(){
		return w_id;
	}
	public void setWId(int w_id) {  
        this.w_id = w_id;  
    } 
	

    public String getName_cn() {  
        return name_ch;  
    }  
  
    public void setName_cn(String name_cn) {  
        this.name_ch = name_cn;  
    } 
    
    public String getW_location() {  
        return w_location;  
    }  
  
    public void setW_location(String w_location) {  
        this.w_location = w_location;  
    } 
    
    public String getName_en() {  
        return name_en;  
    }  
  
    public void setName_en(String name_en) {  
        this.name_en = name_en;  
    } 
    
    public String getW_date() {  
        return w_date;  
    }  
  
    public void setW_date(String w_date) {  
        this.w_date = w_date;  
    } 
    
    public String getImg() {  
        return img;  
    }  
  
    public void setImg(String img) {  
        this.img = img;  
    } 
	

}
