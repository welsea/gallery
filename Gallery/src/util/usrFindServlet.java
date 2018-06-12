package util;


import java.io.IOException;  
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;  
import java.util.ArrayList;  
import java.util.List;
import java.util.regex.*;

import javax.enterprise.context.Destroyed;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;   
  
/** 
 * Servlet implementation class FindServlet 
 */  
public class usrFindServlet extends HttpServlet {  
    private static final long serialVersionUID = 1L;  
  
    /** 
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse 
     *      response) 
     */  
    /** 
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response) 
     */  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        doPost(request, response);  
    }  
  
    /** 
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response) 
     */  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  
      
        String usr_input = request.getParameter("usr_input");    
            
        //登记JDBC驱动程序  
        try {  
            Class.forName("com.mysql.jdbc.Driver");  
        } catch (Exception e) {  
            System.out.print("Class Not Found Exception");  
        }  
          
        //链接URL  
        String url = "jdbc:mysql://localhost:3306/gallery";  
        Connection conn = null;  
        Statement stmt = null;  
        ResultSet rs = null;  
        String reg = "[\\u4E00-\\u9FA5]+";
          
        try {  
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/gallery?useUnicode=true&characterEncoding=utf-8&useSSL=false","root","700626");  
            stmt = (Statement) conn.createStatement();  
            
            //判断中英文
            Matcher m = Pattern.compile(reg).matcher(usr_input);  
            if (m.find()) {  
            	//中文
            	String sql="SELECT * FROM artist WHERE name_cn LIKE'%"+usr_input+"%'";
                rs = stmt.executeQuery(sql);   
            }else {
            	//英文
            	String sql="SELECT * FROM artist WHERE name_en LIKE'%"+usr_input+"%'";
                rs = stmt.executeQuery(sql);  
			}                
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
          
	    HttpSession session = request.getSession();  
	    session.setAttribute("usr_input", usr_input);  
	    List<Artist> list=new ArrayList<Artist>();
	    
	    try {
			while (rs.next()) {
				Artist artist=new Artist();
				artist.setId(rs.getInt("a_id"));
				artist.setName_cn(rs.getString("name_cn"));
				artist.setName_en(rs.getString("name_en"));
				list.add(artist);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("list", list);
		response.sendRedirect("search.jsp");
    }
    
    public void destroy(){
    	super.destroy();
    }
}

