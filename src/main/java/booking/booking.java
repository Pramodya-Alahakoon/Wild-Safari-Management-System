package booking;

public class booking {
	private int id;
	private String safaripackage;
	private String packageDetails;
	private String date;
	private String venue;
	private String name;
	private String email;
	private String contact;
	private String price;
	/**
	 * @param id
	 * @param safaripackage
	 * @param packageDetails
	 * @param date
	 * @param venue
	 * @param name
	 * @param email
	 * @param contact
	 * @param price
	 */
	public booking(int id, String safaripackage, String packageDetails, String date, String venue, String name,
			String email, String contact, String price) {
		super();
		this.id = id;
		this.safaripackage = safaripackage;
		this.packageDetails = packageDetails;
		this.date = date;
		this.venue = venue;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.price = price;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @return the safaripackage
	 */
	public String getSafaripackage() {
		return safaripackage;
	}
	/**
	 * @return the packageDetails
	 */
	public String getPackageDetails() {
		return packageDetails;
	}
	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}
	/**
	 * @return the venue
	 */
	public String getVenue() {
		return venue;
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
	 * @return the contact
	 */
	public String getContact() {
		return contact;
	}
	/**
	 * @return the price
	 */
	public String getPrice() {
		return price;
	}
	
}