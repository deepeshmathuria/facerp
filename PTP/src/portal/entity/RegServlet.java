package portal.entity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.persistence.*;
 
@SuppressWarnings("serial")
public class RegServlet extends HttpServlet {
 
    @Override
    protected void doGet(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Obtain a database connection:
        EntityManagerFactory emf =
           (EntityManagerFactory)getServletContext().getAttribute("emf");
        EntityManager em = emf.createEntityManager();
        FacCoord FC = new FacCoord();
        HttpSession sess = request.getSession();
 
        try {
            FC.setName(request.getParameter("name"));
            FC.setUsername(request.getParameter("username"));
            FC.setPassword(request.getParameter("password"));
            if (FC != null) {
                em.getTransaction().begin();
                em.persist(FC);
                em.getTransaction().commit();
            }
            sess.setAttribute("id", FC.getID());
            request.getRequestDispatcher("/Admin.jsp")
                   .forward(request, response);
        } finally {
            // Close the database connection:
            if (em.getTransaction().isActive())
                em.getTransaction().rollback();
            em.close();
        }
    }
 
    @Override
    protected void doPost(
        HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}