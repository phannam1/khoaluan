package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.newsDTO;
import utils.DBConnector;
import utils.HashUtils;

public class newsDAO {
	final String READALLNEWS = "SELECT news.*, a1.userName,a2.userName FROM NEWS  join account a1 on news.createById = a1.accountid  join account a2 on news.lastModifiedById = a2.accountid order by lastModifiedDate desc ";
	final String READALLNEWSLIMIT = "SELECT news.*, a1.userName,a2.userName FROM NEWS  join account a1 on news.createById = a1.accountid  join account a2 on news.lastModifiedById = a2.accountid  order by lastModifiedDate desc limit 3 ";
	final String READNEWSBYID = "SELECT news.*, a1.userName,a2.userName FROM NEWS  join account a1 on news.createById = a1.accountid  join account a2 on news.lastModifiedById = a2.accountid WHERE NEWSID = ? ";
	final String REGISTERNEWS = "INSERT INTO NEWS(TITLE,PICTURELINK,CONTENT,CREATEBYID,LASTMODIFIEDBYID) VALUES (?,?,?,?,?)";
	final String UPDATENEWS = "UPDATE NEWS SET TITLE = ?, PICTURELINK = ?, CONTENT = ?, LASTMODIFIEDBYID = ? WHERE NEWSID = ?";
	final String UPDATENEWS1 = "UPDATE NEWS SET TITLE = ?,  CONTENT = ?, LASTMODIFIEDBYID = ? WHERE NEWSID = ?";
	final String DELETENEWS = "DELETE FROM NEWS WHERE NEWSID = ?";
	final String SEARCHNEWS = "SELECT news.*, a1.userName,a2.userName FROM NEWS  join account a1 on news.createById = a1.accountid  join account a2 on news.lastModifiedById = a2.accountid WHERE TITLE LIKE ? OR PICTURELINK LIKE ? OR CONTENT LIKE ? OR DATETIME LIKE ? ";
	Connection con = null;
	HashUtils hashUltils = null;
	public newsDAO() {
		con = new DBConnector().getCon();
		hashUltils = new HashUtils();
	}
	public List<newsDTO> readAll(){
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(READALLNEWS);
			if(rs!=null) {
				List<newsDTO> list = new ArrayList<newsDTO>();
				while(rs.next()) {
					newsDTO news = new newsDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),rs.getString(10));
					list.add(news);
				}
				return list;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public List<newsDTO> readAllLimit(){
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(READALLNEWSLIMIT);
			if(rs!=null) {
				List<newsDTO> list = new ArrayList<newsDTO>();
				while(rs.next()) {
					newsDTO news = new newsDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),rs.getString(10));
					list.add(news);
				}
				return list;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public boolean registerNews(newsDTO news) {
		try {
			PreparedStatement pr = con.prepareStatement(REGISTERNEWS);
			pr.setString(1, news.getTitle());
			pr.setString(2, news.getPictureLink());
			pr.setString(3, news.getContent());
			pr.setInt(4, news.getCreateById());
			pr.setInt(5, news.getLastModifiedById());
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
						e.printStackTrace();
		}
		return false;
	}
	public boolean updateNews(newsDTO news) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATENEWS);
			pr.setString(1, news.getTitle());
			pr.setString(2, news.getPictureLink());
			pr.setString(3, news.getContent());
			pr.setInt(4, news.getLastModifiedById());
			pr.setInt(5, news.getNewsId());
			int i = pr.executeUpdate();
			if(i!= 0 ) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	public boolean updateNews1(String title,String content,int las,int id) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATENEWS1);
			pr.setString(1, title);
			pr.setString(2, content);		
			pr.setInt(3, las);
			pr.setInt(4, id);
			int i = pr.executeUpdate();
			if(i!= 0 ) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	public boolean deleteNews(int Id) {
		try {
			PreparedStatement pr = con.prepareStatement(DELETENEWS);
			pr.setInt(1, Id);
			int  i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	public List<newsDTO> searchNews(String value){
		try {
			PreparedStatement pr = con.prepareStatement(SEARCHNEWS);
			pr.setString(1, '%'+value+'%');
			pr.setString(2, '%'+value+'%');
			pr.setString(3, '%'+value+'%');
			pr.setString(4, '%'+value+'%');
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				List<newsDTO> list = new  ArrayList<newsDTO>();
				while(rs.next()) {
					newsDTO news = new newsDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),rs.getString(10));
					list.add(news);
				}
				return list;	
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}
	public newsDTO readNewsById(int id) {
		try {
			PreparedStatement pr = con.prepareStatement(READNEWSBYID);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				if(rs.next()) {
					newsDTO news = new newsDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7),rs.getString(8),rs.getString(9),rs.getString(10));
					return news;
				}
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return null;
	}
}
