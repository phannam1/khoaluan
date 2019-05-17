package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;


import dto.answerDTO;
import utils.DBConnector;
import utils.HashUtils;

public class answerDAO {
	final String READALLANSWER = "SELECT answer.answerId,answer.createById,answer.answerText,answer.dateTime,answer.lastModifiedDate,question.questionName,a2.userName as 'nguoitraloi	' ,a2.avatar FROM answer inner join question on question.questionId = answer.questionId inner join account a2 on answer.createById = a2.accountId where question.questionId= ? order by answer.lastModifiedDate desc;" ; 
	final String CREATEANSWER = "INSERT INTO  ANSWER(answerText,questionId,createById,lastModifiedById) VALUES(?,?,?,?)";
	final String UPDATEFIELDNUMBER = "UPDATE QUESTION SET numberAnswer = ? WHERE QUESTIONID = ?";
	final String GETNUMBER = "SELECT numberAnswer FROM QUESTION WHERE QUESTIONID = ?";
	final String UPDATEANSWER = "UPDATE ANSWER SET answerText = ? WHERE answerId = ?";
	final String DELETEANSWER = "DELETE FROM ANSWER WHERE ANSWERID = ?";
	Connection con = null;
	HashUtils hashUtil = null;

	public answerDAO() {
		con = new DBConnector().getCon();
		hashUtil = new HashUtils();
	}
	public int getNumber(int id) {
		try {
			PreparedStatement pr = con.prepareStatement(GETNUMBER);
			pr.setInt(1, id);
			ResultSet rs = pr.executeQuery();
			if(rs!=null) {
				if(rs.next()) {
					return rs.getInt(1);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	public List<answerDTO> readAllAnswer(int id) {
		try {
		
			PreparedStatement pr = con.prepareStatement(READALLANSWER);
			pr.setInt(1,id);
			ResultSet rs = pr.executeQuery();
			if (rs != null) {
				List<answerDTO> list = new ArrayList<answerDTO>();
				while (rs.next()) {
					answerDTO answer = new answerDTO(rs.getInt(1),rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
							rs.getString(6), rs.getString(7), rs.getString(8));
							
					list.add(answer);
				}
				return list;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return null;
	}
	public boolean createAnswer(String answer,int questionId,int createById,int lasId) {
		try {
			PreparedStatement pr =  con.prepareStatement(CREATEANSWER);
			pr.setString(1, answer);
			pr.setInt(2, questionId);
			pr.setInt(3, createById);
			pr.setInt(4, lasId);
			int i = pr.executeUpdate();
			
			if(i!=0 && updateNumber(questionId, getNumber(questionId))) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	public boolean updateNumber(int questionId,int  number) {
		try {
		PreparedStatement pr = con.prepareStatement(UPDATEFIELDNUMBER);
		pr.setInt(1, number+1);
		pr.setInt(2, questionId);
		int i= pr.executeUpdate();
		if(i!=0 ) {
			return true;
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	

		return false;
	}
	public boolean updateNumber1(int questionId,int  number) {
		try {
		PreparedStatement pr = con.prepareStatement(UPDATEFIELDNUMBER);
		pr.setInt(1, number-1);
		pr.setInt(2, questionId);
		int i= pr.executeUpdate();
		if(i!=0 ) {
			return true;
		}
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	

		return false;
	}
	public boolean updateAnswer(String content,int id) {
		try {
			PreparedStatement pr = con.prepareStatement(UPDATEANSWER);
			pr.setString(1, content);
			pr.setInt(2, id);
			int i= pr.executeUpdate();
			if(i!=0 ) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
	public boolean deleteAnswer(int id,int quesId) {
		try {
			PreparedStatement pr = con.prepareStatement(DELETEANSWER);
			
			pr.setInt(1, id);
			int i= pr.executeUpdate();
			if(i!=0 && updateNumber1(quesId, getNumber(quesId)) ) {
				return true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}
}
