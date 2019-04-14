package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.helpDTO;
import dto.majorDTO;
import utils.DBConnector;
import utils.HashUtils;

public class majorDAO {
	final String READALLMAJOR = "SELECT MAJOR.idMajor,MAJOR.nameMajor,a1.USERNAME AS 'createUSer',a2.USERNAME AS 'lastmodifiedUser',MAJOR.createdTime,MAJOR.updatedTime FROM MAJOR JOIN ACCOUNT a1 ON MAJOR.createdBy = a1.ACCOUNTID JOIN ACCOUNT a2 ON MAJOR.UpdatedBy = a2.ACCOUNTID  order by updatedTime desc ";
	final String CREATEMAJOR = "INSERT INTO MAJOR(nameMajor,createdBy,UpdatedBy) VALUES(?,?,?) ";
	final String UPDATEMAJOR ="UPDATE MAJOR SET nameMajor = ?,UpdatedBy=? WHERE idMajor = ? ";
	final String DELETEMAJOR ="DELETE FROM MAJOR  WHERE idMajor = ? ";
	Connection con = null;
	HashUtils hashUtil = null;

	public majorDAO() {
		con = new DBConnector().getCon();
		hashUtil = new HashUtils();
	}
	public List<majorDTO> readAllMajor() {
		try {
			Statement st  = con.createStatement();
			ResultSet rs = st.executeQuery(READALLMAJOR);
			if(rs!=null){
				List<majorDTO> list = new ArrayList<majorDTO>();
				while(rs.next()) {
					majorDTO major = new majorDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
					list.add(major);	
				}
				return list;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}
	public boolean createMajor(majorDTO major) {
		try {
			PreparedStatement pr = con.prepareStatement(CREATEMAJOR);
			pr.setString(1, major.getNameMajor());
			pr.setInt(2, major.getCreatedById());
			pr.setInt(3, major.getUpdatedById());
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	public boolean updateMajor(int idMajor,String nameMajor,int  updatedById) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATEMAJOR);
			pr.setString(1, nameMajor);
			pr.setInt(2, updatedById);
			pr.setInt(3, idMajor);
		
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean deleteMajor(int idMajor) {
		try {
			PreparedStatement pr = con.prepareStatement(DELETEMAJOR);
			
			pr.setInt(1, idMajor);
		
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
}
