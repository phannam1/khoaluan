package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dto.categoryDTO;
import dto.majorDTO;
import utils.DBConnector;
import utils.HashUtils;

public class categoryDAO {
	final String READALLCATEGORY = "SELECT category.idCategory,category.nameCategory,a1.USERNAME AS 'createUSer',a2.USERNAME AS 'lastmodifiedUser',category.createdTime,category.updatedTime FROM category JOIN ACCOUNT a1 ON category.createdBy = a1.ACCOUNTID JOIN ACCOUNT a2 ON category.UpdatedBy = a2.ACCOUNTID  order by updatedTime desc";
	final String CREATECATEGORY= "INSERT INTO CATEGORY(nameCategory,createdBy,UpdatedBy) VALUES(?,?,?) ";
	final String UPDATECATEGORY="UPDATE CATEGORY SET nameCategory = ?,UpdatedBy=? WHERE idCATEGORY = ? ";
	final String DELETECATEGORY ="DELETE FROM CATEGORY  WHERE idCATEGORY = ? ";
	final String SEARCHINPUT = "SELECT * FROM CATEGORY  WHERE nameCategory = ? ";

	Connection con = null;
	HashUtils hashUtil = null;

	public categoryDAO() {
		con = new DBConnector().getCon();
		hashUtil = new HashUtils();
	}
	public List<categoryDTO> readAllCategory() {
		try {
			Statement st  = con.createStatement();
			ResultSet rs = st.executeQuery(READALLCATEGORY);
			if(rs!=null){
				List<categoryDTO> list = new ArrayList<categoryDTO>();
				while(rs.next()) {
					categoryDTO category = new categoryDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
					list.add(category);	
				}
				return list;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}
	public boolean createcategory(categoryDTO category) {
		try {
			PreparedStatement pr = con.prepareStatement(CREATECATEGORY);
			pr.setString(1, category.getNameCategory());
			pr.setInt(2, category.getCreatedById());
			pr.setInt(3, category.getUpdatedById());
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	public boolean updateCategory(int idcategory,String namecategory,int  updatedById) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATECATEGORY);
			pr.setString(1, namecategory);
			pr.setInt(2, updatedById);
			pr.setInt(3, idcategory);
		
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean deleteCategory(int idcategory) {
		try {
			PreparedStatement pr = con.prepareStatement(DELETECATEGORY);
			
			pr.setInt(1, idcategory);
		
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return false;
		
	}
	public categoryDTO searchInput(String name) {
		try {
			PreparedStatement pr = con.prepareStatement(SEARCHINPUT);
			pr.setString(1, name);
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				if(rs.next()) {
					categoryDTO category = new categoryDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
					return category;
				}
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return null;
	}
}
