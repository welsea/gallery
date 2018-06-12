package util;

import java.io.IOException;  
import java.sql.DriverManager;  
import java.sql.ResultSet;  
  
import javax.servlet.ServletException;  
import javax.servlet.annotation.WebServlet;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
import com.mysql.jdbc.Connection;  
import com.mysql.jdbc.Statement;  
import util.*;
  
/** 
 * Servlet implementation class LoginServlet 
 */  
@WebServlet("/LoginServlet")  
public class LoginServlet extends HttpServlet {  
    private static final long serialVersionUID = 1L;  
         
    /** 
     * @see HttpServlet#HttpServlet() 
     */  
    public LoginServlet() {  
        super();  
          
    }  
  
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
          
        String result = "";  
      
        String username = request.getParameter("username");  
        String pw = request.getParameter("password");  
        String massage="";
          
        Conn conn=new Conn();
        ResultSet rs;
        String sql="SELECT username from userinfo where username='"+username+"' and password='"+pw+"'";
        rs=conn.excuteQuery(sql); 
 
          
    HttpSession session = request.getSession();  
    session.setAttribute("username", username);  
    
          
    try {  
        if(rs.next()){  
            session.setAttribute("message","success") ;    
            response.sendRedirect("log_submit.jsp") ;  
            return;  
        }else{  
            session.setAttribute("message", "fail");  
            response.sendRedirect("log_submit.jsp") ;  
            return;  
        }  
          
    } catch (Exception e) {  
        e.printStackTrace();  
    }  
    }  
  
}  

