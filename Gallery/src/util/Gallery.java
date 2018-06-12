package util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.enterprise.inject.New;

public class Gallery {

	Conn conn=new Conn();
	
	/*
	 * 获取所有艺术家列表
	 */
	public List<Artist> getList() throws SQLException {
		List<Artist> list=new ArrayList<Artist>();
		String sql="select * from artist  order by name_cn";
		ResultSet rs=conn.excuteQuery(sql);
		
		while(rs.next()){
			Artist artist=new Artist();
			artist.setId(rs.getInt("a_id"));
			artist.setImg(rs.getString("img"));
			artist.setName_cn(rs.getString("name_cn"));
			artist.setName_en(rs.getString("name_en"));
			artist.setBorn(rs.getString("born"));
			artist.setDied(rs.getString("died"));
			artist.setNotableWork(rs.getString("notable_work"));
			artist.setNationality(rs.getString("nationality"));
			list.add(artist);
		}
		conn.close();
		return list;
	}
	/*
	 * 获取单个艺术家信息
	 */
	public Artist getArtist(int id) throws SQLException{
		Artist artist=new Artist();
		String sql="select * from artist where a_id="+id+"";
		ResultSet rs=conn.excuteQuery(sql);
		if(rs.next()){
			artist.setId(rs.getInt("a_id"));
			artist.setImg(rs.getString("img"));
			artist.setName_cn(rs.getString("name_cn"));
			artist.setName_en(rs.getString("name_en"));
			artist.setBorn(rs.getString("born"));
			artist.setDied(rs.getString("died"));
			artist.setNotableWork(rs.getString("notable_work"));
			artist.setNationality(rs.getString("nationality"));
		}
		conn.close();
		return artist;
	}
	
	
	/*
	 * 获取所有作品列表
	 */
	public List<A_work> getWList() throws SQLException{
		List<A_work> workList=new ArrayList<A_work>();
		String sql="select * from a_work order by w_id";
		ResultSet rs=conn.excuteQuery(sql);
		
		while(rs.next()){
			A_work work=new A_work();
			work.setId(rs.getInt("a_id"));
			work.setWId(rs.getInt("w_id"));
			work.setName_cn(rs.getString("name_cn"));
			work.setName_en(rs.getString("name_en"));
			work.setImg(rs.getString("img"));
			work.setW_location(rs.getString("w_location"));
			work.setW_date(rs.getString("w_date"));
			workList.add(work);
		}
		conn.close();
		return workList;
	}
	

	/*
	 * 
	 * 获取单个作品
	 */
	public A_work getWork(int id) throws SQLException{
		A_work work=new A_work();
		String sql="SELECT * FROM a_work WHERE w_id ="+id+"";
		ResultSet rs=conn.excuteQuery(sql);
		if(rs.next()){
			work.setId(rs.getInt("a_id"));
			work.setWId(rs.getInt("w_id"));
			work.setName_cn(rs.getString("name_cn"));
			work.setName_en(rs.getString("name_en"));
			work.setW_location(rs.getString("w_location"));
			work.setW_date(rs.getString("w_date"));
			work.setImg(rs.getString("img"));
		}
		conn.close();
		return work;
	}
	
	
	/*
	 * 获得某作品的所有usrShare
	 */
	public List<usrShare> getListById(int w_id) throws SQLException {
		List<usrShare> list=new ArrayList<usrShare>();
		String sql="select * from usrshare where w_id="+w_id;
		ResultSet rs=conn.excuteQuery(sql);
		while (rs.next()) {
			usrShare usrShare=new usrShare();
			usrShare.setUsername(rs.getString("username"));
			usrShare.setIntro(rs.getString("intro"));
			usrShare.setImg(rs.getString("img"));
			list.add(usrShare);
		}
		conn.close();
		return list;
	}
	
	
	/*
	 * insertInfo
	 */
	public int insert(Artist artist){
		String sql="inser into artist(name_cn,name_en,img,a_context) values";
		sql=sql+"('"+artist.getName_cn()+"'"+artist.getName_en()+"'"+artist.getImg()+"'"+artist.getContext()+"'";
		int result=0;
		System.out.println(sql);
		result=conn.excuteUpdate(sql);
		conn.close();
		return result;
	}
	
	/*
	 * changeInfo
	 */
	public int update(Artist artist) {
		String sql="update artist set"+"name_cn='"+artist.getName_cn()+"',a_context='"+artist.getContext()+"'where a_id="+artist.getId();
		int result=0;
		System.out.println(sql);
		result=conn.excuteUpdate(sql);
		conn.close();
		return result;
	}
	
	/*
	 * infoDelete
	 */
	public int delete(int id) {
		String sql="delete from artist where id="+id+"";
		int result=0;
		result=conn.excuteUpdate(sql);
		conn.close();
		return result;
	}
	
}
