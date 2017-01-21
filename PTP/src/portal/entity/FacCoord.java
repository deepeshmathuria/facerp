package portal.entity;

import java.io.Serializable;

import javax.persistence.*;
 
@Entity

public class FacCoord implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	/*
	 * ADMIN - SUPERUSER, has editing and delete/update access
	 */
    @Id @GeneratedValue
	private String id;
	private String name;
	private String username;
	private String password;
	
	public String getID(){
		return id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = SHAclass.generateHash(password);
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
