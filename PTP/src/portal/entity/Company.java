package portal.entity;

import javax.persistence.*;

@Entity
public class Company {
	@Id
	private String Id;
	private String companyName;
    private String email;
	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
