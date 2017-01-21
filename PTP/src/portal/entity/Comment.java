package portal.entity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.persistence.*;

@Embeddable
public class Comment {
	private String content;
	private String time;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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
