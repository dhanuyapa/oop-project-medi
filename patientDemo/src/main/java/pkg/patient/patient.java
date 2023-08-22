package pkg.patient;

public class patient {
	private int id;
	private String FirstName;
	private String LastName;
	private String Telephone;
	private String Email;
	private String password;
	private String userName;
	
	public patient(int id, String FirstName, String LastName, String Telephone, String Email, String password,
			String userName) {
		
		this.id = id;
		this.FirstName = FirstName;
		this.LastName = LastName;
		this.Telephone = Telephone;
		this.Email = Email;
		this.password = password;
		this.userName = userName;
	}

	public int getId() {
		return id;
	}

	public String getFirstName() {
		return FirstName;
	}

	public String getLastName() {
		return LastName;
	}

	public String getTelephone() {
		return Telephone;
	}

	public String getEmail() {
		return Email;
	}

	

	public String getUserName() {
		return userName;
	}
	public String getPassword() {
		return password;
	}

	
	

}
