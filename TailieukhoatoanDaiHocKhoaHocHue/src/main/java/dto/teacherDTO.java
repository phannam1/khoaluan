package dto;

public class teacherDTO {
	private int idTeacher;
	private String nameTeacher;
	private String address;
	private String phone;
	private String email;
	private int createdById;
	private int updatedById;
	private String createdBy;
	private String updatedBy;
	private String createdTime;
	private String updatedTime;
	public teacherDTO() {
		
	}
	
	

	public teacherDTO(int idTeacher, String nameTeacher, String address, String phone, String email, String createdBy,
			String updatedBy, String createdTime, String updatedTime) {
		super();
		this.idTeacher = idTeacher;
		this.nameTeacher = nameTeacher;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.createdBy = createdBy;
		this.updatedBy = updatedBy;
		this.createdTime = createdTime;
		this.updatedTime = updatedTime;
	}

	public teacherDTO(String nameTeacher, String address, String phone, String email, int createdById,
			int updatedById) {
		super();
		this.nameTeacher = nameTeacher;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.createdById = createdById;
		this.updatedById = updatedById;
	}



	
	public int getIdTeacher() {
		return idTeacher;
	}



	public void setIdTeacher(int idTeacher) {
		this.idTeacher = idTeacher;
	}



	public String getNameTeacher() {
		return nameTeacher;
	}
	public void setNameTeacher(String nameTeacher) {
		this.nameTeacher = nameTeacher;
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
