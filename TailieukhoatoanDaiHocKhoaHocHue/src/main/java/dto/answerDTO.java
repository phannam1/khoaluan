package dto;

public class answerDTO {
	private int answerId;
	private String answerText;
	private String time;
	private int questionId;
	private int createById;
	private String questionName;
	private String CreatedByUserName;
	private String answerUserName;
	private String avatarCreatedByUserName;
	private String avatarAnswerUserName;
	private int lastModifiedById;
	private String lastModifiedDate;
	public answerDTO() {
		
	}
	
	public answerDTO(int answerId,int createById , String answerText, String time,
			String lastModifiedDate, String questionName,
			String answerUserName, String avatarAnswerUserName) {
		super();
		this.answerId = answerId;
		this.answerText = answerText;
		this.time = time;
		this.questionName = questionName;
		this.createById = createById;
		this.answerUserName = answerUserName;
	
		this.avatarAnswerUserName = avatarAnswerUserName;
		this.lastModifiedDate = lastModifiedDate;
	}

	public int getAnswerId() {
		return answerId;
	}
	public void setAnswerId(int answerId) {
		this.answerId = answerId;
	}
	public String getAnswerText() {
		return answerText;
	}
	public void setAnswerText(String answerText) {
		this.answerText = answerText;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
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

	public String getQuestionName() {
		return questionName;
	}

	public void setQuestionName(String questionName) {
		this.questionName = questionName;
	}

	public String getCreatedByUserName() {
		return CreatedByUserName;
	}

	public void setCreatedByUserName(String createdByUserName) {
		CreatedByUserName = createdByUserName;
	}

	public String getAnswerUserName() {
		return answerUserName;
	}

	public void setAnswerUserName(String answerUserName) {
		this.answerUserName = answerUserName;
	}

	public String getAvatarCreatedByUserName() {
		return avatarCreatedByUserName;
	}

	public void setAvatarCreatedByUserName(String avatarCreatedByUserName) {
		this.avatarCreatedByUserName = avatarCreatedByUserName;
	}

	public String getAvatarAnswerUserName() {
		return avatarAnswerUserName;
	}

	public void setAvatarAnswerUserName(String avatarAnswerUserName) {
		this.avatarAnswerUserName = avatarAnswerUserName;
	}
	
}
