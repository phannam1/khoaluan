package dto;

public class majorDTO {
	private int idMajor;
	private String nameMajor;
	private int createdById;
	private int updatedById;
	private String createdBy;
	private String updatedBy;
	private String createdTime;
	private String updatedTime;
	public majorDTO() {
		
	}
	
	public majorDTO(int idMajor, String nameMajor, String createdBy, String updatedBy, String createdTime,
			String updatedTime) {
		super();
		this.idMajor = idMajor;
		this.nameMajor = nameMajor;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdTime = createdTime;
		this.updatedTime = updatedTime;
	}

	public majorDTO(String nameMajor, int createdById, int updatedById) {
		super();
		this.nameMajor = nameMajor;
		this.createdById = createdById;
		this.updatedById = updatedById;
	}

	public int getIdMajor() {
		return idMajor;
	}
	public void setIdMajor(int idMajor) {
		this.idMajor = idMajor;
	}
	public String getNameMajor() {
		return nameMajor;
	}
	public void setNameMajor(String nameMajor) {
		this.nameMajor = nameMajor;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
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

	public String getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(String updatedBy) {
		this.updatedBy = updatedBy;
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

	
	
}
