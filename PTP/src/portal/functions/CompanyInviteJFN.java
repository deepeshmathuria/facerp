package portal.functions;

import java.util.Random;

import portal.entity.*;

public class CompanyInviteJFN {

	// Class for JFN Handling

	boolean acceptance_status; // whether company has accepted the JFN or not
	Company comp;

	public void addCompany(String Cname, String email, String JFNContent, String subject) {
		Random rand = new Random();
		int i = (rand.nextInt() % 10000 + 1);
		this.comp.setCompanyName(Cname);
		this.comp.setEmail(email);
		this.comp.setPassword(Cname + i);
		MailSender.sendMail(JFNContent + "\n Credentials: \nUsername: " + Cname + "\nPassword: " + Cname + i, subject,
				email);
	}

}
