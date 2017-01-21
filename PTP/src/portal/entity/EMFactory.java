package portal.entity;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.persistence.*;

public class EMFactory implements ServletContextListener {

	public void contextInitialized(ServletContextEvent e) {
		com.objectdb.Enhancer.enhance("abc.*");
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("$objectdb/db/ptp.odb");
		e.getServletContext().setAttribute("emf", emf);
	}

	// Release the EntityManagerFactory:
	public void contextDestroyed(ServletContextEvent e) {
		EntityManagerFactory emf = (EntityManagerFactory) e.getServletContext()
				.getAttribute("emf");
		emf.close();
	}
}