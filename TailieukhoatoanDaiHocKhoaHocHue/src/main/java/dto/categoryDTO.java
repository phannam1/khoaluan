package dto;

public class categoryDTO {
	private int idCategory;
	private String nameCategory;

	private int createdById;
	private int updatedById;
	private String createdBy;
	private String updatedBy;
	private String createdTime;
	private String updatedTime;
	public categoryDTO() {
		
	}
	public categoryDTO(int idCategory, String nameCategory, String createdBy, String updatedBy,
			String createdTime, String updatedTime) {
		super();
		this.idCategory = idCategory;
		this.nameCategory = nameCategory;

		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdTime = createdTime;
		this.updatedTime = updatedTime;
	}
	
	public categoryDTO(String nameCategory, int createdById, int updatedById) {
		super();
		this.nameCategory = nameCategory;
		this.createdById = createdById;
		this.updatedById = updatedById;
	}
	public int getIdCategory() {
		return idCategory;
	}
	

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}
	public String getNameCategory() {
		return nameCategory;
	}
	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
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
