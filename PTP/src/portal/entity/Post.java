package portal.entity;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.TimeZone;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Post {
	@Id
	private String id;
	private String datePosted;
	private ArrayList<Comment> comments;
	/*
	 * Checks whether the post is for Application/Info
	 */
	private boolean isApplication;
	private int likes;
	private String description;
	private String AuthorID;
	private float cgCriteria;
	private boolean isDraft;
	/*
	 * Flag for Intern-ship/Full-Time FALSE -> Intern-ship TRUE -> Full-Time
	 */
	private boolean IPFT;
	private ArrayList<String> Audience;
	private String companyName;
	private String imageName;
	/*
	 * Tags to determine subscription
	 */
	private ArrayList<String> tags;

	public String getDatePosted() {
		return datePosted;
	}

	public void setDatePosted() {
		SimpleDateFormat sd = new SimpleDateFormat("dd.MM.yyyy G 'at' HH:mm z");
		Date date = new Date();
		sd.setTimeZone(TimeZone.getTimeZone("IST"));
		datePosted = sd.format(date);
	}

	public ArrayList<Comment> getComments() {
		return comments;
	}

	public void setComments(ArrayList<Comment> comments) {
		this.comments = comments;
	}

	public String getAuthorID() {
		return AuthorID;
	}

	public void setAuthorID(String authorID) {
		AuthorID = authorID;
	}

	public boolean isIPFT() {
		return IPFT;
	}

	public void setIPFT(boolean iPFT) {
		IPFT = iPFT;
	}

	public ArrayList<String> getAudience() {
		return Audience;
	}

	public void setAudience(ArrayList<String> audience) {
		Audience = audience;
	}

	public boolean isApplication() {
		return isApplication;
	}

	public void setApplication(boolean isApplication) {
		this.isApplication = isApplication;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public ArrayList<String> getTags() {
		return tags;
	}

	public void setTags(ArrayList<String> tags) {
		this.tags = tags;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getCgCriteria() {
		return cgCriteria;
	}

	public void setCgCriteria(float cgCriteria) {
		this.cgCriteria = cgCriteria;
	}

	public boolean isDraft() {
		return isDraft;
	}

	public void setDraft(boolean isDraft) {
		this.isDraft = isDraft;
	}

}
