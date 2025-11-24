package login;

public class login {
	private int iduser;
	private String firstname;
	private String lastname;
	private String birthday;
	private String email;
	private String phone;
	private String type;
	private String username;
	private String password;
	/**
	 * @param iduser
	 * @param firstname
	 * @param lastname
	 * @param birthday
	 * @param email
	 * @param phone
	 * @param type
	 * @param username
	 * @param password
	 */
	public login(int iduser, String firstname, String lastname, String email, String birthday, String phone,
			String type, String username, String password) {
		super();
		this.iduser = iduser;
		this.firstname = firstname;
		this.lastname = lastname;
		
		this.email = email;
		this.birthday = birthday;
		this.phone = phone;
		this.type = type;
		this.username = username;
		this.password = password;
	}
	/**
	 * @return the iduser
	 */
	public int getIduser() {
		return iduser;
	}
	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}
	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}
	/**
	 * @return the birthday
	 */
	
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	public String getBirthday() {
		return birthday;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	
	
}
