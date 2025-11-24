package feedback;

public class feedback {
	private int feedbackid;
	private String name;
	private String email;
	private String phone;
	private String message;
	private String rating;
	/**
	 * @param feedbackid
	 * @param name
	 * @param email
	 * @param phone
	 * @param message
	 * @param rating
	 */
	public feedback(int feedbackid, String name, String email, String phone, String message, String rating) {
		super();
		this.feedbackid = feedbackid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.message = message;
		this.rating = rating;
	}
	/**
	 * @return the feedbackid
	 */
	public int getFeedbackid() {
		return feedbackid;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}
	/**
	 * @return the rating
	 */
	public String getRating() {
		return rating;
	}
	
}
