package util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import util.*;

public class User {
	Conn conn=new Conn();
	/*
	 * 获取用户列表
	 */
	public List<UserInfo> getList() throws SQLException {
		List<UserInfo> list=new ArrayList<UserInfo>();
		String sql="select * from userinfo order by usrid";
		ResultSet rs=conn.excuteQuery(sql);
		
		while (rs.next()) {
			UserInfo info=new UserInfo();
			info.setUsrId(rs.getInt("usrid"));
			info.setUsername(rs.getString("username"));
			info.setPassword(rs.getString("password"));
			list.add(info);
		}
		conn.close();
		return list;
	}
	
	/*
	 * 获取share列表
	 */
	public List<usrShare> getShareList() throws SQLException {
		List<usrShare> list=new ArrayList<usrShare>();
		String sql="select * from usrshare order by shareid";
		ResultSet rs=conn.excuteQuery(sql);
		
		while (rs.next()) {
			usrShare share=new usrShare();
			share.setUsername(rs.getString("username"));
			share.setIntro(rs.getString("intro"));
			share.setImg(rs.getString("img"));
			share.setShareId(rs.getInt("shareid"));
			share.setWId(rs.getInt("w_id"));
			list.add(share);
		}
		conn.close();
		return list;
	}
	
	/*
	 * 某用户的share列表
	 * 
	 */
	public List<usrShare> getUShareList(String username) throws SQLException {
		List<usrShare> list=new ArrayList<usrShare>();
		String sql="select * from usrshare where username='"+username+"'";
		ResultSet rs=conn.excuteQuery(sql);
		
		while (rs.next()) {
			usrShare share=new usrShare();
			share.setATag(rs.getString("a_tag"));
			share.setWTag(rs.getString("w_tag"));
			share.setUsername(rs.getString("username"));
			share.setIntro(rs.getString("intro"));
			share.setImg(rs.getString("img"));
			share.setShareId(rs.getInt("shareid"));
			share.setWId(rs.getInt("w_id"));
			list.add(share);
		}
		conn.close();
		return list;
	}
	
	
	/*
	 * 用户修改
	 */
	public int update(UserInfo info) {
		String sql="update userinfo set password='"+info.getPasseord()+"' where username='"+info.getUsername()+"'";
		int result=0;
		result=conn.excuteUpdate(sql);
		conn.close();
		return result;
	}
	
	/*
	 * share修改
	 */
	public int shadeUpdate(UserInfo info) {
		String sql="update usrshare set intro='"+info.getIntro()+"',img='"+info.getImg()+"',a_tag='"+info.getATag()+
				"',w_tag='"+info.getWTag()+"' where shareid="+info.getShareId()+"";
		int result=0;
		result=conn.excuteUpdate(sql);
		conn.close();
		return result;
		
	}
	
	
	/*
	 * share delete
	 */
	public int deleteShare(int shareid) {
		String sql="delete from usrshare where shareid="+shareid+"";
		int result=0;
		result=conn.excuteUpdate(sql);
		conn.close();
		return result;
	}
	
	/*
	 * user delete
	 */
	public int deleteUser(String username) {
		String sql="delete from userinfo where username='"+username+"'";
		int result=0;
		result=conn.excuteUpdate(sql);
		conn.close();
		return result;
	}

}
