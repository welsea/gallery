package util;

public class Artist {
	private int a_id;
	private String name_ch;
	private String name_en;
	private String a_contex;
	private String img;
	private String born;
	private String died;
	private String nationality;
	private String notable_work;
	
	
	
	public int getId(){
		return a_id;
		
	}
	public void setId(int a_id) {  
        this.a_id = a_id;  
    } 
	

    public String getName_cn() {  
        return name_ch;  
    }  
  
    public void setName_cn(String name_cn) {  
        this.name_ch = name_cn;  
    } 
    
    public String getName_en() {  
        return name_en;  
    }  
  
    public void setName_en(String name_en) {  
        this.name_en = name_en;  
    }
    
    public String getContext() {  
        return a_contex;  
    }  
  
    public void setContext(String a_context) {  
        this.a_contex=a_context;  
    }
    
    
    public String getImg() {
		return img;
	}
    public void setImg(String img){
    	this.img=img;
    }
    
    public String getBorn() {
		return born;
	}
    public void setBorn(String born){
    	this.born=born;
    }
    
    public String getDied() {
		return died;
	}
    public void setDied(String died){
    	this.died=died;
    }
    
    public String getNationality() {
		return nationality;
	}
    public void setNationality(String nationality){
    	this.nationality=nationality;
    }
    
    public String getNotableWork() {
		return notable_work;
	}
    public void setNotableWork(String notable_work){
    	this.notable_work=notable_work;
    }
}
