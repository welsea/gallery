package util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


public class UploadUServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        response.setContentType("text/html;charset=utf-8");  
        request.setCharacterEncoding("utf-8");  
      

        
        String username=request.getParameter("usr");
        String intro=request.getParameter("intro");
        int w_id=DataConverter.toInt(request.getParameter("wid"));
      //String img=request.getParameter("img");
        
        try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        try {	 
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/gallery?useUnicode=true&characterEncoding=utf-8&useSSL=false", "root", "700626");
	        Statement stmt=conn.createStatement();

	        String sql="insert into usrshare (username,intro,w_id) values ('"+username+"','"+intro+"',"+w_id+")";
	       
	        
	        HttpSession session = request.getSession();
	        int FLAG=stmt.executeUpdate(sql);
	        
	        if(FLAG>0){
			    response.sendRedirect("usrShare.jsp?id="+w_id);
		    }else{
		    	response.sendRedirect("usrShare.jsp?id="+w_id);
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
}