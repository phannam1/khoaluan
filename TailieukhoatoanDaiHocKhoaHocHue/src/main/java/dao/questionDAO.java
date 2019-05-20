package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import dto.questionDTO;
import utils.DBConnector;
import utils.HashUtils;

public class questionDAO {
	final String READALLQUESTIONBYID = "select * from question  where question.createById = ?";
	final String CREATEYOURQUESTION = "INSERT INTO QUESTION(questionName,createById,lastModifiedById) VALUES(?,?,?)";
	final String UPDATEYOURQUESTION = "UPDATE QUESTION SET questionName = ? ,lastModifiedById = ? WHERE QUESTIONID = ?";
	final String DELETEYOURQUESTION = "DELETE FROM QUESTION WHERE QUESTIONID = ?";
	final String DELETEANSWERBYQUESTIONID = "DELETE FROM ANSWER WHERE QUESTIONID = ?";
	final String READALLQUESTION = "SELECT question.questionId, question.questionName,question.dateTime,question.lastModifiedDate,account.userName,account.avatar,account.address,account.phone,account.email FROM question inner join account on account.accountId=question.createById order by question.lastModifiedDate desc";
	final String READALLQUESTIONLIMIT = "SELECT question.questionId, question.questionName,question.dateTime,question.lastModifiedDate,account.userName,account.avatar,account.address,account.phone,account.email FROM question inner join account on account.accountId=question.createById  order by question.lastModifiedDate desc limit 5";
	final String CREATEQUESTION = "INSERT INTO QUESTION(questionName,createById,lastModifiedById) VALUES(?,?,?)";
	final String READQUESTIONBYQUESTIONBYID ="SELECT question.questionId, question.questionName,question.dateTime,question.lastModifiedDate,account.userName,account.avatar,account.address,account.phone,account.email FROM question inner join account on account.accountId=question.createById where question.questionId = ?;";
	Connection con = null;
	HashUtils hashUltils = null;
	public questionDAO() {
		con = new DBConnector().getCon();
		hashUltils = new HashUtils();
	}
	public List<questionDTO> readAllQuestionById(int id){
		try {

			PreparedStatement pr =con.prepareStatement(READALLQUESTIONBYID);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				List<questionDTO> list = new ArrayList<>();
				while(rs.next()) {
					questionDTO question = new questionDTO(rs.getInt(1), rs.getString(2),rs.getInt(3),  rs.getString(4), rs.getString(7));
					list.add(question);
				}
				return list;	
			}
		} catch (SQLException e) {
						e.printStackTrace();
		}
		
		return null;
	}
	public questionDTO readAllQuestionByQuestionId(int id){
		try {

			PreparedStatement pr =con.prepareStatement(READQUESTIONBYQUESTIONBYID);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				
				if(rs.next()) {
					questionDTO question = new questionDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6));
					return question;	
				}
				
			}
		} catch (SQLException e) {
						e.printStackTrace();
		}
		
		return null;
	}
	public List<questionDTO> readAllQuestion(){
		try {

			PreparedStatement pr =con.prepareStatement(READALLQUESTION);
		
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				List<questionDTO> list = new ArrayList<>();
				while(rs.next()) {
					questionDTO question = new questionDTO(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),rs.getString(8), rs.getString(9));
					list.add(question);
				}
				return list;	
			}
		} catch (SQLException e) {
						e.printStackTrace();
		}
		
		return null;
	}
	public List<questionDTO> readAllQuestionLimit(){
		try {

			PreparedStatement pr =con.prepareStatement(READALLQUESTIONLIMIT);
		
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				List<questionDTO> list = new ArrayList<>();
				while(rs.next()) {
					questionDTO question = new questionDTO(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),rs.getString(8), rs.getString(9));
					list.add(question);
				}
				return list;	
			}
		} catch (SQLException e) {
						e.printStackTrace();
		}
		
		return null;
	}
	
	
	public boolean createYourQuestion(String content,int createdId,int lasId) {
		try {
			PreparedStatement pr = con.prepareStatement(CREATEYOURQUESTION);
			pr.setString(1, content);
			pr.setInt(2, createdId);
			pr.setInt(3, lasId);
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return false;
	
	}
	public boolean updateYourQuestion(String content,int lasId,int quesId) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATEYOURQUESTION);
			pr.setString(1, content);
			pr.setInt(2, lasId);
			pr.setInt(3, quesId);
			int i = pr.executeUpdate();
			if(i!=0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return false;
	
	}
	public boolean deleteYourQuestion(int quesId) {
		try {
			PreparedStatement pr = con.prepareStatement(DELETEYOURQUESTION);
			
			pr.setInt(1, quesId);
			int i = pr.executeUpdate();
			PreparedStatement pr1 = con.prepareStatement(DELETEANSWERBYQUESTIONID);
			pr1.setInt(1, quesId);
			int i1 = pr1.executeUpdate();
			if(i!=0 && i1!=0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		return false;
	
	}
	public boolean createQuestion(String quetionName,int createId,int lasId) {
		try {
			PreparedStatement pr = con.prepareStatement(CREATEQUESTION);
			pr.setString(1, quetionName);
			pr.setInt(2, createId);
			pr.setInt(3, lasId);
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
