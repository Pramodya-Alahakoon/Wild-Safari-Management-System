package admin;

public class guide {
	 	private String firstname;
	    private String lastname;
	    private String email;
	    private String phone;
	    private int experience;
	    private String languages;
	    private String bio;
		/**
		 * @param firstname
		 * @param lastname
		 * @param email
		 * @param phone
		 * @param experience
		 * @param languages
		 * @param bio
		 */
		public guide(String firstname, String lastname, String email, String phone, int experience, String languages,
				String bio) {
			super();
			this.firstname = firstname;
			this.lastname = lastname;
			this.email = email;
			this.phone = phone;
			this.experience = experience;
			this.languages = languages;
			this.bio = bio;
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
		 * @return the experience
		 */
		public int getExperience() {
			return experience;
		}
		/**
		 * @return the languages
		 */
		public String getLanguages() {
			return languages;
		}
		/**
		 * @return the bio
		 */
		public String getBio() {
			return bio;
		}
	    
	    
}
