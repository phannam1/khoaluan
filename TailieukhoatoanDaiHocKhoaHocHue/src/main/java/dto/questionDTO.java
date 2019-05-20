package dto;

public class questionDTO {
	private int questionId;
	private String questionName;
	private int numberQuestion;
	private String time;
	private int createById;
	private int lastModifiedById;

	private String avatar;
	private String address;
	private String phone;
	private String email;
	private String createdUserName;
	private String lastModifiedUserName;
	private String lastModifiedDate;
	public questionDTO() {
		
	}
	
	
	public questionDTO(int questionId, String questionName,int numberQuestion,  String time, String lastModifiedDate ) {
		super();
		this.questionId = questionId;
		this.questionName = questionName;
		this.numberQuestion = numberQuestion;
		this.time = time;
		this.lastModifiedDate = lastModifiedDate;
	}
	

	public questionDTO(int questionId ,String questionName, String time, String lastModifiedDate,String createdUserName, String avatar, String address, String phone, String email
			) {
		this.questionId = questionId;
		this.questionName = questionName;
		this.time = time;
		this.avatar = avatar;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.createdUserName = createdUserName;
		this.lastModifiedDate = lastModifiedDate;
	}


	public questionDTO(int questionId, String questionName, String time,
			String lastModifiedDate, String createdUserName, String avatar) {
		super();
		this.questionId = questionId;
		this.questionName = questionName;
		this.time = time;
		this.avatar = avatar;
		this.createdUserName = createdUserName;
		this.lastModifiedDate = lastModifiedDate;
	}


	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public String getQuestionName() {
		return questionName;
	}
	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getCreateById() {
		return createById;
	}
	public void setCreateById(int createById) {
		this.createById = createById;
	}
	public int getLastModifiedById() {
		return lastModifiedById;
	}
	public void setLastModifiedById(int lastModifiedById) {
		this.lastModifiedById = lastModifiedById;
	}
	public String getLastModifiedDate() {
		return lastModifiedDate;
	}
	public void setLastModifiedDate(String lastModifiedDate) {
		this.lastModifiedDate = lastModifiedDate;
	}

	public int getNumberQuestion() {
		return numberQuestion;
	}

	public void setNumberQuestion(int numberQuestion) {
		this.numberQuestion = numberQuestion;
	}

	public String getCreatedUserName() {
		return createdUserName;
	}

	public void setCreatedUserName(String createdUserName) {
		this.createdUserName = createdUserName;
	}

	public String getLastModifiedUserName() {
		return lastModifiedUserName;
	}

	public void setLastModifiedUserName(String lastModifiedUserName) {
		this.lastModifiedUserName = lastModifiedUserName;
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
	
}
