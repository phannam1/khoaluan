package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import dto.subjectDTO;
import utils.DBConnector;
import utils.HashUtils;

public class subjectDAO {
	final String READALLSUBJECT = "SELECT subject.idSubject,subject.nameSubject,a1.USERNAME AS 'createUSer',a2.USERNAME AS 'lastmodifiedUser',subject.createdTime,subject.updatedTime FROM subject JOIN ACCOUNT a1 ON subject.createdBy = a1.ACCOUNTID JOIN ACCOUNT a2 ON subject.UpdatedBy = a2.ACCOUNTID  order by updatedTime desc ";
	final String CREATESUBJECT = "INSERT INTO subject(nameSubject,createdBy,UpdatedBy) VALUES(?,?,?) ";
	final String UPDATESUBJECT ="UPDATE subject SET nameSubject = ?,UpdatedBy=? WHERE idSubject = ? ";
	final String DELETESUBJECT ="DELETE FROM subject  WHERE idSubject = ? ";
	final String SEARCHINPUT = "SELECT * FROM subject  WHERE nameSubject = ? ";
	Connection con = null;
	HashUtils hashUtil = null;

	public subjectDAO() {
		con = new DBConnector().getCon();
		hashUtil = new HashUtils();
	}
	public List<subjectDTO> readAllSubject() {
		try {
			Statement st  = con.createStatement();
			ResultSet rs = st.executeQuery(READALLSUBJECT);
			if(rs!=null){
				List<subjectDTO> list = new ArrayList<subjectDTO>();
				while(rs.next()) {
					subjectDTO subject = new subjectDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
					list.add(subject);	
				}
				return list;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}
	public boolean createSubject(subjectDTO subject) {
		try {
			PreparedStatement pr = con.prepareStatement(CREATESUBJECT);
			pr.setString(1, subject.getNameSubject());
			pr.setInt(2, subject.getCreatedById());
			pr.setInt(3, subject.getUpdatedById());
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	public boolean updateSubject(int idSubject,String nameSubject,int  updatedById) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATESUBJECT);
			pr.setString(1, nameSubject);
			pr.setInt(2, updatedById);
			pr.setInt(3, idSubject);
		
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean deleteSubject(int idSubject) {
		try {
			PreparedStatement pr = con.prepareStatement(DELETESUBJECT);
			
			pr.setInt(1, idSubject);
		
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
	public subjectDTO searchInput(String name) {
		try {
			PreparedStatement pr = con.prepareStatement(SEARCHINPUT);
			pr.setString(1, name);
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				if(rs.next()) {
					subjectDTO subject = new subjectDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
					return subject;
				}
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return null;
	}
}
