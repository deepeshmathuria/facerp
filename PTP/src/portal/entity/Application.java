package portal.entity;

import javax.persistence.*;

@Entity
public class Application {
	@Id
	private String id;
	private String studentID;
	// To determine the application is for which candidate has applied
	private String postID;
	// Application eligibility status
	private boolean Status;
	private String feedback;

	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getPostID() {
		return postID;
	}

	public void setPostID(String postID) {
		this.postID = postID;
	}

	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

}
