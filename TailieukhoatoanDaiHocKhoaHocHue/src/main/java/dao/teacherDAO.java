package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.majorDTO;
import dto.teacherDTO;
import utils.DBConnector;
import utils.HashUtils;

public class teacherDAO {
	final String READALLTEACHER = "SELECT teacher.idTeacher,teacher.nameTeacher,teacher.address,teacher.phone,teacher.email,a1.USERNAME AS 'createUSer',a2.USERNAME AS 'lastmodifiedUser',teacher.createdTime,teacher.updatedTime FROM teacher JOIN ACCOUNT a1 ON teacher.createdBy = a1.ACCOUNTID JOIN ACCOUNT a2 ON teacher.UpdatedBy = a2.ACCOUNTID  order by updatedTime desc ";
	final String CREATETEACHER = "INSERT INTO teacher(nameTeacher,address,phone,email,createdBy,UpdatedBy) VALUES(?,?,?,?,?,?) ";
	final String UPDATETEACHER ="UPDATE teacher SET nameTeacher = ?,address = ?,phone = ?,email = ?,UpdatedBy=? WHERE idTeacher = ? ";
	final String DELETETEACHER ="DELETE FROM teacher  WHERE idTeacher = ? ";
	Connection con = null;
	HashUtils hashUtil = null;

	public teacherDAO() {
		con = new DBConnector().getCon();
		hashUtil = new HashUtils();
	}
	public List<teacherDTO> readAllTeacher() {
		try {
			Statement st  = con.createStatement();
			ResultSet rs = st.executeQuery(READALLTEACHER);
			if(rs!=null){
				List<teacherDTO> list = new ArrayList<teacherDTO>();
				while(rs.next()) {
					teacherDTO teacher = new teacherDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9	));
					list.add(teacher);	
				}
				return list;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}
	public boolean createTeacher(teacherDTO teacher) {
		try {
			PreparedStatement pr = con.prepareStatement(CREATETEACHER);
			pr.setString(1, teacher.getNameTeacher());
			pr.setString(2, teacher.getAddress());
			pr.setString(3, teacher.getPhone());
			pr.setString(4, teacher.getEmail());
			pr.setInt(5, teacher.getCreatedById());
			pr.setInt(6, teacher.getUpdatedById());
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	public boolean updateTeacher(int idTeacher,String nameTeacher,String address,String phone,String email,int  updatedById) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATETEACHER);
			pr.setString(1, nameTeacher);
			pr.setString(2, address);
			pr.setString(3, phone);
			pr.setString(4, email);
			pr.setInt(5, updatedById);
			pr.setInt(6, idTeacher);
		
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean deleteTeacher(int idTeacher) {
		try {
			PreparedStatement pr = con.prepareStatement(DELETETEACHER);
			
			pr.setInt(1, idTeacher);
		
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
