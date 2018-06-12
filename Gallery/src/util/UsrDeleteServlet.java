package util;

import java.io.IOException;  
import java.sql.Connection;  
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;  
import java.util.ArrayList;  
import java.util.List;
import java.util.function.IntToDoubleFunction;
import java.util.regex.*;
import com.mysql.jdbc.*;
import javax.enterprise.context.Destroyed;
import javax.jms.Session;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.mvc.method.annotation.ServletRequestMethodArgumentResolver;

import util.*;
  
/** 
 * Servlet implementation class FindServlet 
 */  
public class UsrDeleteServlet extends HttpServlet {  
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
      

        int id=DataConverter.toInt(request.getParameter("id"));
        
        try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        try {	 
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/gallery?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root", "700626");
	        Statement stmt=conn.createStatement();
//	        User user=new User();
//	       List<usrShare> share=user.getShareList();
//	       username=share.get
	        String sql="delete from userinfo where usrid="+id+"";
//	        String sql2="delete from usrshare where username='"+username+"'";
	       
	        
	        HttpSession session = request.getSession();
	        int FLAG=stmt.executeUpdate(sql);
	        
	        if(FLAG>0){
			    response.sendRedirect("manager_user.jsp");
		    }else{
		    	response.sendRedirect("manager_user.jsp");
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
    }
    
    public void destroy(){
    	super.destroy();
    }
}

