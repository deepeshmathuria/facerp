package portal.entity;

import java.io.Serializable;
import javax.persistence.*;
 
@Entity

public class SPCoordinator implements Serializable  {
	
	private static final long serialVersionUID = 1L;
	/*
	 * ADMIN - SUPERUSER, has view access only
	 */
    @Id @GeneratedValue
	private String id;
	private String name;
	private String studID;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStudID() {
		return studID;
	}
	public void setStudID(String studID) {
		this.studID = studID;
	}
	
}
