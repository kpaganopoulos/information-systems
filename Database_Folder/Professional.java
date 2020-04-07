package Database_Folder;

public class Professional {

	private int profID;
	private String profName;
	private String profEmail;
	private String area;
	private String specialty;
	private String phoneNumber;
	private String address;
	private String comment;
	private Double rating;

	public Professional(int profID, String profName, String profEmail, String area, String specialty, String phoneNumber, String address, String comment, Double rating) {

		this.profID = profID;
		this.profName = profName;
		this.profEmail = profEmail;
		this.area = area;
		this.specialty = specialty;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.comment = comment;
		this.rating = rating;

	}

	public int getProfID() {
		return profID;
	}

	public void setProfID(int profID) {
		this.profID = profID;
	}

	public String getProfName() {
		return profName;
	}

	public void setProfName(String profName) {
		this.profName = profName;
	}

	public String getProfEmail() {
		return profEmail;
	}

	public void setProfEmail(String profEmail) {
		this.profEmail = profEmail;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getComment() {
			return comment;
	}

	public void setComment(String comment ) {
		this.comment = comment;
	}

	public Double getRating() {
		return rating;
	}

	public void setRating(Double rating) {
		this.rating = rating;
	}
}
