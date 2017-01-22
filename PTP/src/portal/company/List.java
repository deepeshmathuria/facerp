package portal.company;

import java.util.ArrayList;
import javax.persistence.Entity;
import javax.persistence.Id;
import portal.entity.Student;

@Entity
public class List {

	@Id
	private String id;
	private String ApplicationID;
	private ArrayList<Student> students;
	private String label;
	private int sortint; // to help in sorting the shortlisting history

	public String getApplicationID() {
		return ApplicationID;
	}

	public void setApplicationID(String applicationID) {
		ApplicationID = applicationID;
	}

	public ArrayList<Student> getStudents() {
		return students;
	}

	public void setStudents(ArrayList<Student> students) {
		this.students = students;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public int getSortint() {
		return sortint;
	}

	public void setSortint(int sortint) {
		this.sortint = sortint;
	}
}
