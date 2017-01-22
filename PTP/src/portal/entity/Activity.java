package portal.entity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.persistence.*;

@Entity
public class Activity {
    
	@Id
	private String id;
	private String origin;
	private String name;
	private String time;

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime() {
		SimpleDateFormat sd = new SimpleDateFormat("dd.MM.yyyy G 'at' HH:mm z");
		Date date = new Date();
		sd.setTimeZone(TimeZone.getTimeZone("IST"));
		this.time = sd.format(date);
	}

}
