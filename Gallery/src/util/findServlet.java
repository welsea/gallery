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

import util.*;
  
/** 
 * Servlet implementation class FindServlet 
 */  
public class findServlet extends HttpServlet {  
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
      
        Conn conn=new Conn();
        String usr_input = request.getParameter("usr_input");    
        String reg = "[\\u4E00-\\u9FA5]+";
        ResultSet rs; 
        String sql="";
            Matcher m = Pattern.compile(reg).matcher(usr_input);  
            if (m.find()) {  
            	//ÖÐÎÄ
            	sql="SELECT * FROM a_work WHERE name_cn LIKE'%"+usr_input+"%'";
            }else {
            	//Ó¢ÎÄ
            	sql="SELECT * FROM a_work WHERE name_en LIKE'%"+usr_input+"%'";
            }                
        rs=conn.excuteQuery(sql);
	    HttpSession session = request.getSession();  
	    session.setAttribute("usr_input", usr_input);  
	    List<A_work> list=new ArrayList<A_work>();
	    
	    try {
			while (rs.next()) {
				A_work work=new A_work();
				work.setId(rs.getInt("a_id"));
				work.setWId(rs.getInt("w_id"));
				work.setImg(rs.getString("img"));
				work.setName_cn(rs.getString("name_cn"));
				work.setName_en(rs.getString("name_en"));
				list.add(work);
				
				
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

