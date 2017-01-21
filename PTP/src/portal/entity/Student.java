package portal.entity;

import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {

	@Id
	private String id;
	private String sID;
	private String branch;
	private String name, contact, email, password;
	private String x, xii, jee, image, grade_sheet;
	private String cgpa;
	private ArrayList<String> subscriptions;
	private Boolean intern_status;
	private Boolean placement_status;
	private int block; // count for blocking student in next count no. of
						// companies

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = SHAclass.generateHash(password);
	}

	public String getX() {
		return x;
	}

	public void setX(String x) {
		this.x = x;
	}

	public String getGrade_sheet() {
		return grade_sheet;
	}

	public void setGrade_sheet(String grade_sheet) {
		this.grade_sheet = grade_sheet;
	}

	public String getJee() {
		return jee;
	}

	public void setJee(String jee) {
		this.jee = jee;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getXii() {
		return xii;
	}

	public void setXii(String xii) {
		this.xii = xii;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Boolean getIntern_status() {
		return intern_status;
	}

	public void setIntern_status(Boolean intern_status) {
		this.intern_status = intern_status;
	}

	public Boolean getPlacement_status() {
		return placement_status;
	}

	public void setPlacement_status(Boolean placement_status) {
		this.placement_status = placement_status;
	}

	public String getCgpa() {
		return cgpa;
	}

	public void setCgpa(String cgpa) {
		this.cgpa = cgpa;
	}

	public ArrayList<String> getSubscriptions() {
		return subscriptions;
	}

	public void setSubscriptions(ArrayList<String> subscriptions) {
		this.subscriptions = subscriptions;
	}

	public int getBlock() {
		return block;
	}

	public void setBlock(int block) {
		this.block = block;
	}

	public String getsID() {
		return sID;
	}

	public void setsID(String sID) {
		this.sID = sID;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}
}