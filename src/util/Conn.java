package util;

import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Conn {
	
	Connection conn = null;  
    Statement stmt = null;  
    ResultSet rs = null;  
    PreparedStatement pstmt;
    
    /*
     * 加载驱动
     */
    public Conn(){
    	try {  
            Class.forName("com.mysql.jdbc.Driver");  
        } catch (Exception e) {  
            System.out.print("Class Not Found Exception");  
        }
    }
    
    /*
     * 查询
     */
    public ResultSet excuteQuery(String sql){
    	try {  
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gallery?useUnicode=true&characterEncoding=utf-8&useSSL=false","root","700626");  
            stmt = conn.createStatement();  
            rs = stmt.executeQuery(sql);                 
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    	return rs;
    }
    /*
     * 更新
     */
    public int excuteUpdate(String sql){
    	int res=0;
    	try {  
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gallery?useUnicode=true&characterEncoding=utf-8&useSSL=false","root","700626");  
            pstmt= conn.prepareStatement(sql);
            rs = pstmt.executeQuery(sql);                 
        } catch (Exception e) {  
            res=0;  
        }  
    	return res;
    }
    
    /*
     * 关闭
     */
    public void close(){
    	
		try {
			if(rs!=null)
				rs.close();
		} catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace(System.err);
		}
    	
		try {
			if(stmt!=null)
				rs.close();
		} catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace(System.err);
		}
    	
		try {
			if(conn!=null)
				rs.close();
		} catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace(System.err);
		}
    	
		
    }
    

}
