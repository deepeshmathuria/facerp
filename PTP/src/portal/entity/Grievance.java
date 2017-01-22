package portal.entity;

import javax.persistence.*;

@Entity
public class Grievance {

	@Id
	private String id;
	private String sid;
	private String subject;
	private String description;
	private boolean status; // false -> unresolved/pending , true - > resolved

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
