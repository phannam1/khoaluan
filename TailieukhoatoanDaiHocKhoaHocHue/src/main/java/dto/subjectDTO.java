package dto;

public class subjectDTO {
	private int idSubject;
	private String nameSubject;
	private int createdById;
	private int updatedById;
	private String createdBy;
	private String updatedBy;
	private String createdTime;
	private String updatedTime;
	public subjectDTO() {
		
	}
	
	public subjectDTO(int idSubject, String nameSubject, String createdBy, String updatedBy, String createdTime,
			String updatedTime) {
		super();
		this.idSubject = idSubject;
		this.nameSubject = nameSubject;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdTime = createdTime;
		this.updatedTime = updatedTime;
	}

	public subjectDTO(String nameSubject, int createdById, int updatedById) {
		super();
		this.nameSubject = nameSubject;
		this.createdById = createdById;
		this.updatedById = updatedById;
	}

	public int getIdSubject() {
		return idSubject;
	}
	public void setIdSubject(int idSubject) {
		this.idSubject = idSubject;
	}
	public String getNameSubject() {
		return nameSubject;
	}
	public void setNameSubject(String nameSubject) {
		this.nameSubject = nameSubject;
	}
	public int getCreatedById() {
		return createdById;
	}
	public void setCreatedById(int createdById) {
		this.createdById = createdById;
	}
	public int getUpdatedById() {
		return updatedById;
	}
	public void setUpdatedById(int updatedById) {
		this.updatedById = updatedById;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}
	public String getUpdatedBy() {
		return updatedBy;
	}
	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
	}
	public String getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}
	public String getUpdatedTime() {
		return updatedTime;
	}
	public void setUpdatedTime(String updatedTime) {
		this.updatedTime = updatedTime;
	}
	
}
