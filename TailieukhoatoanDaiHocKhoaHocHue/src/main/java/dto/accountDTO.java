package dto;

import java.io.Serializable;

public class accountDTO implements Serializable {
	
	private int accountId;
	private String userName;
	private String password;
	private String name;
	private String avatar;
	private String address;
	private String phone;
	private String email;
	private String passwordLevel2;
	private String questionSecurity;
	private String answerSecurity;
	private int isActive;
	private int isDelete;
	private int roleId;
	private int lasModifiedById;
	private String lasUserName;
	private String creationDate;
	private String lastModifiedDate;
	
	public accountDTO() {
		
	}
	
	public accountDTO(String name, String userName, String password, String email, int lasModifiedById, int roleId) {
		super();
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.email = email;
		this.roleId = roleId;
		this.lasModifiedById = lasModifiedById;
	}

	public accountDTO(int accountId, String userName, String password, String name, String avatar, String address,
			String phone, String email, String passwordLevel2, String questionSecurity, String answerSecurity,
			int isActive, int isDelete, int roleId, int lasModifiedById, String creationDate, String lastModifiedDate) {
		super();
		this.accountId = accountId;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.passwordLevel2 = passwordLevel2;
		this.questionSecurity = questionSecurity;
		this.answerSecurity = answerSecurity;
		this.isActive = isActive;
		this.isDelete = isDelete;
		this.roleId = roleId;
		this.lasModifiedById = lasModifiedById;
		this.creationDate = creationDate;
		this.lastModifiedDate = lastModifiedDate;
	}

	public accountDTO(int accountId, String userName, String password, String name, String avatar, String address,
			String phone, String email, String passwordLevel2, String questionSecurity, String answerSecurity,
			int isActive,int isDelete, int roleId,  int lasModifiedById,String creationDate,String lastModifiedDate,String lasUserName  ) {
		super();
		this.accountId = accountId;
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.passwordLevel2 = passwordLevel2;
		this.questionSecurity = questionSecurity;
		this.answerSecurity = answerSecurity;
		this.isActive = isActive;
		this.isDelete = isDelete;
		this.roleId = roleId;
		this.lasModifiedById = lasModifiedById;		
		this.creationDate = creationDate;
		this.lastModifiedDate = lastModifiedDate;
		this.lasUserName=lasUserName;
	}

	public accountDTO(String userName, String password, String name, String avatar, String address, String phone,
			String email, String passwordLevel2, String questionSecurity, String answerSecurity, int isActive,int isDelete,
			int roleId,  int lasModifiedById) {
		super();
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.passwordLevel2 = passwordLevel2;
		this.questionSecurity = questionSecurity;
		this.answerSecurity = answerSecurity;
		this.isActive = isActive;
		this.isDelete = isDelete;
		this.roleId = roleId;
	
		this.lasModifiedById = lasModifiedById;
	}
	public accountDTO( String name,String userName, String password, String email,int roleId) {
		this.userName = userName;
		this.password = password;
		this.name = name;
		this.email = email;
		this.roleId = roleId;
		
	}
	public accountDTO(String userName, String name,  String address, String email, String phone) {
		super();
		this.userName = userName;
		this.name = name;	
		this.address = address;
		this.phone = phone;
		this.email = email;
	}
	public accountDTO(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}
	public accountDTO(int accountId,String avatar, String address, String phone, String email, String passwordLevel2,
			String questionSecurity, String answerSecurity,int lasModifiedById) {
		super();
		this.accountId = accountId;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.passwordLevel2 = passwordLevel2;
		this.questionSecurity = questionSecurity;
		this.answerSecurity = answerSecurity;
		this.lasModifiedById = lasModifiedById;
	}
	public accountDTO(String userName, String name, String address, String phone, String email, int isActive,int isDelete) {
		super();
		this.userName=userName;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.isActive = isActive;
		this.isDelete = isDelete;
	}
	

	public  accountDTO(String userName,String passwordLevel2,  String questionSecurity,String answerSecurity) {
		this.passwordLevel2 = passwordLevel2;
		this.userName = userName;
		this.questionSecurity = questionSecurity;
		this.answerSecurity = answerSecurity;
	}
	
	public accountDTO(int accountId, String avatar, String address, String phone, String email, int lasModifiedById) {
		super();
		this.accountId = accountId;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.lasModifiedById = lasModifiedById;
	}
	public accountDTO(int accountId, String avatar, String address, String phone, String email, String questionSecurity,
			String answerSecurity, int lasModifiedById) {
		super();
		this.accountId = accountId;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.questionSecurity = questionSecurity;
		this.answerSecurity = answerSecurity;
		this.lasModifiedById = lasModifiedById;
	}
	
	public accountDTO(int accountId, String avatar, String address, String phone, String email, String passwordLevel2,
			int lasModifiedById) {
		super();
		this.accountId = accountId;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.passwordLevel2 = passwordLevel2;
		this.lasModifiedById = lasModifiedById;
	}
	public int getAccountId() {
		return accountId;
	}
	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswordLevel2() {
		return passwordLevel2;
	}
	public void setPasswordLevel2(String passwordLevel2) {
		this.passwordLevel2 = passwordLevel2;
	}
	public String getQuestionSecurity() {
		return questionSecurity;
	}
	public void setQuestionSecurity(String questionSecurity) {
		this.questionSecurity = questionSecurity;
	}
	public String getAnswerSecurity() {
		return answerSecurity;
	}
	public void setAnswerSecurity(String answerSecurity) {
		this.answerSecurity = answerSecurity;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
	public int getLasModifiedById() {
		return lasModifiedById;
	}
	public void setLasModifiedById(int lasModifiedById) {
		this.lasModifiedById = lasModifiedById;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}
	
	public String getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}
	public String getLastModifiedDate() {
		return lastModifiedDate;
	}
	public void setLastModifiedDate(String lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	public String getLasUserName() {
		return lasUserName;
	}

	public void setLasUserName(String lasUserName) {
		this.lasUserName = lasUserName;
	}
	

}
